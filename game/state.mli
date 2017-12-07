open Level

type tile =
  | Spike
  | Ground
  | Wall
  | GGEZ

type obj

type input =
  | Left
  | Right
  | Jump
  | Nothing

type pos = {
  mutable x : float;
  mutable y : float;
}

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
