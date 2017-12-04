open Entities
open Command

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
  completed : int list
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

let init_state () : state = {
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
}

let update_state (st:state) (i:input) : state =
  match i with
  | Left  -> true
  | Right -> true
  | Jump  -> true
  | Shoot -> true
  | _     -> false
