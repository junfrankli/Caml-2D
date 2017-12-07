open Level

type tile =
  | Spike
  | Ground
  | Wall

type obj

type input

type state = {
  input  : int;
  player : obj;
  in_air : bool;
  lvl   : int;
  tile_locs : ((int*int)*tile) list;
  start: float * float;
}

val init_state : level -> state

val reach_end : state -> bool

val update_key : state -> input -> unit
