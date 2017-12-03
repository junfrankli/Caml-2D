open State

type movement

(*Represents the types of obstacles*)
type obstacles

(*Represents the types of entities*)
type ent

(*Represents the basic information of an object*)
type obj

(*Pair of positions where the first is the bottom left corner of the hitbox
  and the second is the top right corner.*)
(*val boundingbox : {topleft : position, botright : position}*)

(*[is_obst] is true if the entity is an obstacle and false otherwise.
  An obstacle is any entity that will cause a game over if the player entity
  were to collide with it.*)
val is_obst : entity -> bool

(*[is_ground] is true if the entity is a groudn object and false
  otherwise.*)
val is_ground : entity -> bool
