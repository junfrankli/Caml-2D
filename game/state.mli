type state

type obj

type input

type level

val update_jumps : input -> state -> unit

(*[has_jump] is true if the player can jump at least one more time*)
val has_jump : state -> bool

val init_state : int -> state
