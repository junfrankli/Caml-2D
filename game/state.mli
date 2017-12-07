type pos

type obj

type input

type level

type state = {
  input  : char;
  player : obj;
  in_air : bool;
  level  : int;
  completed : int list;
  positions : (obj * pos) list;
  game_over : bool;
}

val update_jumps : input -> state -> unit

(*[has_jump] is true if the player can jump at least one more time*)
val has_jump : state -> bool

val init_state : int -> state

val update_key : state -> char -> state
