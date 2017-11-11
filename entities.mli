open State

(*Represents an object in the game*)
type entity

val pos : position

(*Pair of positions where the first is the bottom left corner of the hitbox
  and the second is the top right corner.*)
type hitbox = position * position
