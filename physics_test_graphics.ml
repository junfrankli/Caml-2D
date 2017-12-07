open OUnit
open State
open Level

let st = init_state (level1)
let () = update_key st Right
let st2 = init_state (level1)
let () = update_key st2 Left

let test_initialize = [
  "initialize input" >:: (fun _ -> assert_equal 0 (st.input));
  "initialize size" >:: (fun _ -> assert_equal (0.75,0.75) (st.player.size));
  "initialize jump" >:: (fun _ -> assert_equal 2 (st.player.move.jump));
  "initialize air" >:: (fun _ -> assert_equal false (st.in_air));
  "initialize air" >:: (fun _ -> assert_equal 1 (st.lvl));
  "initialize end" >:: (fun _ -> assert_equal false (reach_end st));
]

let test_update_vel = [
  "compare size" >:: (fun _ -> assert_equal (st.player.size) (st2.player.size));
  "is right" >:: (fun _ -> assert_equal true (st.player.isRight));
  "is left" >:: (fun _ -> assert_equal false (st2.player.isRight));

]

let tests = List.flatten [test_initialize; test_update_vel];
