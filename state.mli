open Entities
open Command

(*Represents the position in coordinates of the player*)
type position

(*Represents the player's velocity*)
val vel : float

(*Represents the player's acceleration*)
val acc : float

(*[detect_hit h1,h2] return true if there exists an overlap of coordinates
  between hitboxes [h1] and [h2] and false otherwise.*)
val detect_hit : hitbox * (hitbox list) -> bool * entity

(*[num_jumps] is the number of jumps the player has left.
  The player has double-jump capabilities so the initial
  value is 2 and should reset to 2 when the player entity
  contacts a ground entity.*)
val num_jumps : int

val update_jumps : Command.input  -> int ref -> int

(*[has_jump] is true if the player can jump at least one more time*)
val has_jump : bool

(*[level] is the level that the state is currently in*)
val level : int

(*[pos_list] is the association list consisting of each
  entity in the current level and their position*)
val pos_list : (entity * position) list
