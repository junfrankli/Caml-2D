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

type obstacles =
  | Spikes of movement
  | Foe

type ent =
  | Obstacle of obstacles
  | Ground
  | Wall
  | Being

type obj = {
  etype : ent;
  size  : float * float;
  move  : movement;
  switch: pos list;
}

type level = {
  obj_list : obj list;
  start_pos : pos;
  exit : pos;
  holes : pos list;
}

type state = {
  input  : int;
  player : obj;
  in_air : bool;
  level  : int;
  completed : int list;
  positions : (obj * pos) list;
  game_over : bool;
}

type aabb = {
  center     : float * float;
  width_rad  : float;
  height_rad : float
}


(*----------------------------------------------------------------------------*)


let update_vel s =
  let m = s.player.move in
  if s.in_air then
    m.v.xvel <- m.v.xvel /. 2.;
  m.v.xvel <- m.v.yvel /. 2.;
  if not s.in_air then
    m.v.xvel <- m.a.xacc*.m.targetVelocity.xvel
                +. (1.0 -. m.a.xacc)*.m.v.xvel;
  m.v.yvel <- m.a.yacc*.m.targetVelocity.yvel
              +. (1.0 -. m.a.yacc)*.m.v.yvel


let update_move s =
  let m = s.player.move in
  m.loc.x <- m.loc.x +. m.v.xvel;
  m.loc.y <- m.loc.y +. m.v.yvel

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

let is_obst e =
  match e with
  | Obstacle o -> true
  | _          -> false

let is_ground e =
  match e with
  | Ground -> true
  | _      -> false

let is_wall e =
  match e with
  | Wall -> true
  | _    -> false


let vel s = s.player.move.v

let acc s = s.player.move.a

type input =
  | Left
  | Right
  | Jump
  | Shoot

let update_jumps i s =
  if s.player.move.jump = 0 then raise (NoJump "0 jumps")
  else
    match i with
    | Jump -> s.player.move.jump <- s.player.move.jump - 1
    | _    -> s.player.move.jump <- s.player.move.jump

let has_jump s = if s.player.move.jump > 0 then true else false

let init_state l = {
  input     = 0;
  player    = {etype = Being; size = (0.,0.);
               move = {
                 loc = {x = 0.; y=0.};
                 a   = {xacc = 0.; yacc = 0.};
                 v   = {xvel = 0.; yvel = 0.};
                 targetVelocity = {xvel = 0.; yvel = 0.;};
                 jump= 2
               }; switch = []};
  in_air    = false;
  level     = l;
  completed = [];
  positions = [];
  game_over = false;
}

let update_key st k =
  {st with input = k}
