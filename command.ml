type input =
  | Left
  | Right
  | Jump
  | Shoot

let check_input i =
  match i with
  | Left, Right, Jump, Shoot -> true
  | _ -> false

let parse s =
  let s' = String.(trim s |> lowercase_ascii) in
  if s'="l" then Left
  else if s'="r" then Right
  else if s'="j" then Jump
  else if s'="s" then Shoot
  else failwith "invalid input"
