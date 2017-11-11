(*update physics based on command*)
open Entities

(*[detect_hit h1,h2] return true if there exists an overlap of coordinates
  between hitboxes [h1] and [h2] and false otherwise.*)
val detect_hit : hitbox * hitbox -> bool

val is_game_over : bool

val game_over : bool
