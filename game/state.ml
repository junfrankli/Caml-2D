open Level

exception NoJump of string

type pos = {
  mutable x : float;
  mutable y : float;
}

(*Default for now*)
let gravity = 9.8

type acc_con = float

type target_speed = float

type vel = {
  mutable xvel : float;
  mutable yvel : float
}
type acc = {
  mutable xacc : float;
  mutable yacc : float;
}

type movement = {
  loc       : pos;
  mutable a : acc;
  mutable v : vel;
  mutable targetVelocity : vel;
  mutable jump : int
}



type tile =
  | Spike
  | Ground
  | Wall
  | GGEZ

type obj = {
  size   : float * float;
  move   : movement;
  switch : pos list;
  mutable isRight: bool
}


type state = {
  input  : int;
  player : obj;
  in_air : bool;
  lvl    : int;
  tile_locs : ((int*int)*tile) list;
  start  : float*float
}

type aabb = {
  center     : float * float;
  width_rad  : float;
  height_rad : float
}


(*----------------------------------------------------------------------------*)

let f (k,_,_) = k

let s (_,k,_) = k

let t (_,_,k) = k

let update_vel s =
  let m = s.player.move in
  m.v.xvel <- m.a.xacc*.m.targetVelocity.xvel
              +. (1.0 -. m.a.xacc)*.m.v.xvel;
  m.v.yvel <- m.a.yacc*.m.targetVelocity.yvel
              +. (1.0 -. m.a.yacc)*.m.v.yvel

(*[get_aabb ob] takes an object [ob] and returns an axis-aligned bouding box.*)
let get_aabb (ob : obj) =
  let pos_x   = ob.move.loc.x in
  let pos_y   = ob.move.loc.y in
  let size_x  = fst ob.size in
  let size_y  = snd ob.size in
  {center     = (pos_x,pos_y);
   width_rad  = size_x /. 2.0;
   height_rad = size_y /. 2.0}

(*[aabb_collision ob1 ob2] takes two objects [ob1] and [ob2] and determines if
  they collide or not.*)
let aabb_collision ob1 ob2 =
  let box1 = get_aabb ob1 in
  let box2 = get_aabb ob2 in
  let dx   = (fst box1.center) -. (fst box2.center) in
  let px   = (box1.width_rad +. box2.width_rad -. (abs_float dx)) in
  if px <= 0.0 then false
  else let dy = (snd box1.center) -. (snd box2.center) in
    let py = (box1.height_rad +. box2.height_rad -. (abs_float dy)) in
    if py <= 0.0 then false else true
(*[broad_phase] is the list of tile indexes that the player is intersecting with.
*)
let broad_phase player =
  let box   = get_aabb player in
  let left  = int_of_float (floor ((fst box.center)-.box.width_rad)) in
  let right = int_of_float (ceil ((fst box.center)+.box.width_rad)) in
  let up    = int_of_float (ceil ((snd box.center)+.box.height_rad)) in
  let down  = int_of_float (floor ((snd box.center)-.box.height_rad)) in
  if up - down = 2 then if right - left = 2 then
      [(left,down);(left,up-1);(right-1,down);(right-1,up-1)] else
      [(left,down);(left,up-1)] else if right - left = 2 then
    [(left,down);(right-1,down)]  else [(left,down)]

(*[killed lst state] determines if there exists a Spike tile in [lst] and
  returns [true] if there does exist one.*)
let rec killed lst state =
  match lst with
  | [] -> false
  | (k,v)::t -> if not (List.mem_assoc ((k,v)) state.tile_locs) then killed t state else
      match List.assoc (k,v) state.tile_locs with
      | Spike -> true
      | _ -> killed t state
(*[narrow_phase] checks for collisions and mutates the player movement parameters
  accordingly given [lst] of tile intersections*)
let rec narrow_phase lst state =
  match lst with
  | [] -> false
  | (k,v)::t -> if not (List.mem_assoc ((k,v)) state.tile_locs) then killed t state else
      match List.assoc (k,v) state.tile_locs with
      | Ground -> true
      | Wall   -> true
      | _ -> narrow_phase t state

let rec cast_ftoi lst =
  match lst with
  | [] -> []
  | (k,v)::t -> (int_of_float k, int_of_float v) :: (cast_ftoi t)

let update_movex s =
  let m = s.player.move in
  m.loc.x <- m.loc.x +. m.v.xvel;
  if m.loc.x < 0.  then m.loc.x <- 0.;
  if m.loc.x > 20. then m.loc.x <- 20.

let update_movey s =
  let m = s.player.move in
  m.loc.y <- m.loc.y +. m.v.yvel;
  if m.loc.y < 0.  then m.loc.y <- 0.;
  if m.loc.y > 20. then m.loc.y <- 20.

(*1 Killed -> Reset
  check step x, if collide, reset x else dont
  eheck step y, if collide, reset y else dont
  update player face
  update if jump is reset*)
let update_player player state =
  let init_move = state.player.move in
  let lst = broad_phase player in
  (match state.input with
   | 97  -> state.player.isRight <- false
   | 100 -> state.player.isRight <- true
   | _   -> state.player.isRight <- state.player.isRight);
    if killed lst state then
      player.move.loc.x <- fst state.start;
      player.move.loc.y <- snd state.start;
      player.move.v     <- {xvel = 0.; yvel = 0.};
      player.move.targetVelocity <- {xvel = 0.; yvel = 0.};
      player.move.jump  <- 2;
    (*collide in x*)
    update_movex state;
    let lst_x = broad_phase (state.player) in
    if narrow_phase lst_x state then
      player.move.loc.x <- init_move.loc.x;
      player.move.v.xvel <- 0.;
      player.move.targetVelocity.xvel <- 0.;
    (*collide in y*)
    update_movey state;
    let lst_y = broad_phase (state.player) in
    if narrow_phase lst_y state then
      let init_yvel = player.move.v.yvel in
      player.move.loc.y  <- init_move.loc.y;
      player.move.v.yvel <- 0.;
      player.move.targetVelocity.yvel <- 0.;
      if init_yvel <= 0. then
        player.move.jump <- 2




let vel s = s.player.move.v

let acc s = s.player.move.a

type input =
  | Left
  | Right
  | Jump
  | Nothing

let update_jumps i s =
  if s.player.move.jump = 0 then raise (NoJump "0 jumps")
  else
    match i with
    | Jump -> s.player.move.jump <- s.player.move.jump - 1
    | _    -> s.player.move.jump <- s.player.move.jump

let has_jump s = if s.player.move.jump > 0 then true else false

let pos_list = []

let rec init_tile lst acc =
  match lst with
  | [] -> acc
  | (k,v,l)::t -> (match k with
      | "uspike" -> init_tile t (((v,l),Spike)::acc)
      | "dspike" -> init_tile t (((v,l),Spike)::acc)
      | "lspike" -> init_tile t (((v,l),Spike)::acc)
      | "rspike" -> init_tile t (((v,l),Spike)::acc)
      | "ground" -> init_tile t (((v,l),Wall)::acc)
      | "grass" -> init_tile t (((v,l),Ground)::acc)
      | _ -> init_tile t (((v,l),Ground)::acc)
    )
let init_state level = {
  input     = 0;
  player    = {size = (0.75,0.75);
               move = {
                 loc = {x = float_of_int (fst level.start_pos) +. 0.375; y=float_of_int (snd level.start_pos) +. 0.375};
                 a   = {xacc = 0.75; yacc = 0.75};
                 v   = {xvel = 0.; yvel = 0.};
                 targetVelocity = {xvel = 0.; yvel = 0.;};
                 jump= 2
               }; switch = []; isRight = true};
  in_air    = false;
  lvl       = level.l;
  tile_locs = init_tile level.obj_list [];
  start     = (0.,0.)
}

let reach_end state =
  let lst = broad_phase state.player in
  let rec help lst state =
    match (broad_phase state.player) with
    | [] -> false
    | (k,v)::t -> if not (List.mem_assoc ((k,v)) state.tile_locs) then help t state else
        match List.assoc (k,v) state.tile_locs with
        | GGEZ -> true
        | _ -> help t state in
  help lst state

let update_key st i =
  match i with
  | Left  -> st.player.move.targetVelocity.xvel <- -1.; st.player.isRight <- false
  | Right -> st.player.move.targetVelocity.xvel <- 1.;  st.player.isRight <- true
  | Jump  -> st.player.move.targetVelocity.yvel <- 5.
  | Nothing -> st.player.move.targetVelocity <- {xvel = 0.; yvel = 0.}

(*let update_state (st:state) (i:input) : state =
  match i with
  | Left  -> check_collisions st.obj_locs st
  | Right -> st
  | Jump  -> st
  | Shoot -> st*)
