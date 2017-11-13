open Entities

(*Represents the position in coordinates of the player*)
type position

(*Represents the player's velocity*)
type vel

(*Represents the player's acceleration*)
type acc

(*[level] is the level that the state is currently in*)
val level : int

(*[pos_list] is the association list consisting of each
  entity in the current level and their position*)
val pos_list : (entity * position) list
