type input

(*[check_input i] takes input [i] and returns [true] if the input is valid and
  false otherwise.*)
val check_input : input -> bool

(*[parse s] takes string [s] and returns the input corresponding to the 
  input string*)
val parse : string -> input
