open Physics

(*Should be Physics.movement*)
type movement = bool

type obstacles =
  | Spikes of movement
  | Foe

type obj =
| Obstacle of obstacles
| Ground
| Being

type entity = {
  etype : obj;
  pos   : position;
  evel  : vel;
  eacc  : acc
}

type hitbox = position * position

let is_obst e =
  match e with
  | Obstacle o -> true
  | _          -> false

let is_ground e =
  match e with
  | Ground -> true
  | _      -> false
