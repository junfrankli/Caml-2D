type input =
  | Left
  | Right
  | Jump
  | Shoot

let check_input i =
  match i with
  | Left, Right, Jump, Shoot -> true
  | _ -> false

let parse c : input =
  match c with
  | 'w' -> Jump
  | 'a' -> Left
  | ' ' -> Shoot
  | 'd' -> Right
  | _ -> failwith "invalid input"
