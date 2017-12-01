type pos = {
  mutable x : float;
  mutable y : float;
}

type gravity = float

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


let update_vel movement =
  movement.v.xvel <- movement.a.xacc*.movement.targetVelocity.xvel+.(1.0-.movement.a.xacc)*.movement.v.xvel;
  movement.v.yvel <- movement.a.yacc*.movement.targetVelocity.yvel+.(1.0-.movement.a.yacc)*.movement.v.yvel


let update_move movement =
movement.loc.x <- movement.loc.x+.movement.v.xvel;
movement.loc.y <- movement.loc.y+.movement.v.yvel;
