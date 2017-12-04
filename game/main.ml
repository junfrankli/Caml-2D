open State
open Command

let game_over = false

let rec main () =
  run (init_state ())

and run st =
  if game_over then ()
  else
    let e = Graphics.wait_next_event [Graphics.Poll] in
    if (not e.Graphics.keypressed) then run st
    else
      let input = parse e.Graphics.key in
      let st' = update_st st input in
      run st'
