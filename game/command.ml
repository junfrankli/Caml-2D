type input =
  | Left
  | Right
  | Jump
  | Shoot

(*Most likely unnecessary because input will be checked during event handling*)
let check_input i =
  match i with
  | Left  -> true
  | Right -> true
  | Jump  -> true
  | Shoot -> true

let parse c =
  match c with
  | 119 -> Jump
  | 97 -> Left
  | 32 -> Shoot
  | 100 -> Right
  | _   -> failwith "invalid input"
