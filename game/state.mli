open Level

type tile =
  | GGEZ
  | Cobble1
  | Cobble2
  | Sand1
  | Sand2
  | Uspike
  | Lspike
  | Rspike
  | Dspike
  | Uspike_t
  | Uspike_b
  | Dspike_t
  | Dspike_b
  | Rspike_l
  | Rspike_r
  | Lspike_l
  | Lspike_r
  | Stone1
  | Stone2
  | Snow1
  | Snow2
  | Grass1
  | Grass2
  | Blade

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
  lvl   : int;
  tile_locs : ((int*int)*tile) list;
  start: float * float;
}

val init_state : level -> state

val reach_end : state -> bool

val update_key : state -> input -> unit

val update_player : state -> unit
