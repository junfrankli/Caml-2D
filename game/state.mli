type pos

type obj

type input

type level

type tile

type state = {
  input  : int;
  player : obj;
  in_air : bool;
  level  : int;
  tile_locs : ((int*int)*tile) list;
}

val update_jumps : input -> state -> unit

(*[has_jump] is true if the player can jump at least one more time*)
val has_jump : state -> bool

val init_state : int -> state

val update_key : state -> char -> state
