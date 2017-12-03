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
  | _     -> false

let parse c : input =
  match c with
  | 'w' -> Jump
  | 'a' -> Left
  | ' ' -> Shoot
  | 'd' -> Right
  | _   -> failwith "invalid input"
