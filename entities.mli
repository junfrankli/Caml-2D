open State

(*Represents an object in the game*)
type entity

(*Pair of positions where the first is the bottom left corner of the hitbox
  and the second is the top right corner.*)
type hitbox

(*[is_obst] is true if the entity is an obstacle and false otherwise.
  An obstacle is any entity that will cause a game over if the player entity
  were to collide with it.*)
val is_obst : entity -> bool

(*[is_ground] is true if the entity is a groudn object and false
  otherwise.*)
val is_ground : entity -> bool
