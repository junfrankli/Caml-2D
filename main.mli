(*update physics based on command*)
open Entities

val game_over : bool

(*[detect_hit h1,h2] return true if there exists an overlap of coordinates
  between hitboxes [h1] and [h2] and false otherwise.*)
val detect_hit : hitbox * (hitbox list) -> bool

(*[main] will drive the whole game and should be what
  initiates the game*)
val main : unit -> unit
