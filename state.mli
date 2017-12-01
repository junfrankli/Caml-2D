open Entities

(*Represents the position in coordinates of the player*)
type position

(*Represents the player's velocity*)
val vel : float

(*Represents the player's acceleration*)
val acc : float

(*[num_jumps] is the number of jumps the player has left.
  The player has double-jump capabilities so the initial
  value is 2 and should reset to 2 when the player entity
  contacts a ground entity.*)
val num_jumps : int

(*[level] is the level that the state is currently in*)
val level : int

(*[pos_list] is the association list consisting of each
  entity in the current level and their position*)
val pos_list : (entity * position) list
