open Entities
open State

(*[objects] is the list of all entities on the current level.*)
val objects : entity list

(*[start_pos] is where the player starts off on the current level.*)
val start_pos : position

(*[exit] is the position the player needs to be in to continue to the next level.*)
val exit : position

val holes : position list
