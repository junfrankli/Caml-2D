(*update physics based on command*)
open Entities

val game_over : bool

(*[detect_hit h1,h2] return true if there exists an overlap of coordinates
  between hitboxes [h1] and [h2] and false otherwise.*)
val detect_hit : hitbox * (hitbox list) -> bool

val main : unit -> unit
