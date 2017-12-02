open Physics

(*Should be Physics.movement*)
type movement = bool

type obstacles =
  | Spikes of movement
  | Foe

type ent =
| Obstacle of obstacles
| Ground
| Being

type obj = {
  etype : ent;
  size  : int * int;
  pos   : position;
  evel  : vel;
  eacc  : acc
}

let is_obst e =
  match e with
  | Obstacle o -> true
  | _          -> false

let is_ground e =
  match e with
  | Ground -> true
  | _      -> false
