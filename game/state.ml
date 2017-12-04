open Entities
open Command
open Physics
open Level

type position = int * int

(* keeps track of which keys are pressed down
 * makes it easier to do physics *)
type pressed = {
  w_up       : bool;
  a_left     : bool;
  d_right    : bool;
  space_jump : bool
}

type state = {
  pressed_keys : pressed;
  player : obj;
  in_air : bool;
  level  : int;
  completed : int list;
  obj_locs : obj list;
  game_over : bool;
}

let vel s = s.player.move.v

let acc s = s.player.move.a

let update_jumps i n =
  if (!n) = 0 then 0
  else
    match i with
    | Jump -> (!n) - 1
    | _    -> !n

let has_jump s = if !(s.num_jumps) > 0 then true else false

let pos_list = []

let init_state (l:level) : state = {
  pressed_keys = {w_up = false;a_left = false;d_right = false;space_jump = false};
  player    = {etype = Being; size = (0,0);
               move = {
                 loc = {x = 0.; y=0.};
                 a   = {xacc = 0.; yacc = 0.};
                 v   = {xvel = 0.; yvel = 0.};
                 targetVelocity = {xvel = 0.; yvel = 0;};
                 jump= 2
               }; switch = []};
  in_air    = false;
  level     = 0;
  completed = [];
  obj_locs = l.obj_list;
  game_over = false;
}

(*process_collisions makes the result of each collisions with the player*)
let process_collisions (st:state) (pl:obj) (col:obj)=
  match pl.etype, col.etype with
  | Being, Obstacle _ -> {st with game_over = true}
  | Being, _ -> failwith "Frank will do collision detection"

(*check_collisions iterates through list of objects with possible collisons*)
let rec check_collisions (acc:obj list) (st:state): state =
  match acc with
  | [] -> st
  | h::t -> process_collisions st st.player h |> check_collisions t

let update_state (st:state) (i:input) : state =
  match i with
  | Left  -> check_collisons st.obj_locs st
  | Right -> st
  | Jump  -> st
  | Shoot -> st
  | _     -> st
