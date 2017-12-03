open State
open Command

let game_over = false

let initial = init_state ()

let rec main () =
  run initial

and run st =
  if game_over then ()
  else
    let e = Graphics.wait_next_event [Graphics.Poll] in
    if (not e.Graphics.keypressed) then run st
    else
      let input = parse e.Graphics.key in
      let st' = update_st input in
      run st'
