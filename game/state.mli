type level = {
  l : int;
  obj_list : (string*int*int) list;
  start_pos : int*int;
  exit : int*int;
}

type state

val init_state : level -> state
