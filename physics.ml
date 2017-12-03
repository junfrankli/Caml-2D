open State

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

let update_vel s =
  let m = s.player.move in
  if s.in_air then
    m.v.xvel <- m.v.xvel /. 2.;
    m.v.xvel <- m.v.yvel /. 2.;
  if not s.inair then
  m.v.xvel <- m.a.xacc*.m.targetVelocity.xvel
              +. (1.0 -. m.a.xacc)*.m.v.xvel;
  m.v.yvel <- m.a.yacc*.m.targetVelocity.yvel
              +. (1.0 -. m.a.yacc)*.m.v.yvel


let update_move s =
  let m = s.player.move in
  m.loc.x <- m.loc.x +. m.v.xvel;
  m.loc.y <- m.loc.y +. m.v.yvel;
