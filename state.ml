open Entities
open Command

type position = int * int

let vel = 0.0

let acc = 0.0

let detect_hit x = failwith "Unimplemented"

let num_jumps = ref 2

let update_jumps i n =
  if (!n) = 0 then 0
  else
    match i with
    | Jump -> (!n) - 1
    | _    -> !n

let has_jump = if !num_jumps > 0 then true else false

let level = 0

let pos_list = []
