open State
open GMain
open GdkKeysyms

let locale = GtkMain.Main.init ()

(* Image: title *)
let title_img k = GMisc.image ~packing:k
    ~file:"../images/menu/title.png" ()

(* Images: menu bar *)
let mquit_img k = GMisc.image ~packing:k
    ~file:"../images/menu/mquit.png" ()
let lquit_img k = GMisc.image ~packing:k
    ~file:"../images/menu/lquit.png" ()
let lmenu_img k = GMisc.image ~packing:k
    ~file:"../images/menu/lmenu.png" ()

(* Images: unlocked levels *)
let unlocked_img n k =
  match n with
  | 1 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg1.png" ()
  | 2 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg2.png" ()
  | 3 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg3.png" ()
  | 4 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg4.png" ()
  | 5 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg5.png" ()
  | 6 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg6.png" ()
  | 7 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg7.png" ()
  | 8 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg8.png" ()
  | 9 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg9.png" ()
  | 10 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg10.png" ()
  | 11 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg11.png" ()
  | 12 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg12.png" ()
  | 13 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg13.png" ()
  | 14 -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg14.png" ()
  | _ -> GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg15.png" ()

(* Images: locked stages *)
let locked_stage_img n k =
  match n with
  | 2 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/stage2.png" ()
  | 3 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/stage3.png" ()
  | 4 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/stage4.png" ()
  | _ -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/stage5.png" ()

(* Images: locked levels *)
let locked_level_img n k =
  match n with
  | 2 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg2.png" ()
  | 3 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg3.png" ()
  | 4 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg4.png" ()
  | 5 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg5.png" ()
  | 6 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg6.png" ()
  | 7 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg7.png" ()
  | 8 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg8.png" ()
  | 9 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg9.png" ()
  | 10 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg10.png" ()
  | 11 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg11.png" ()
  | 12 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg12.png" ()
  | 13 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg13.png" ()
  | 14 -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg14.png" ()
  | _ -> GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg15.png" ()

(**)
let rec level n l window vbox st () =
  window#remove vbox#coerce;
  let vbox = GPack.vbox ~packing:window#add () in
  (* Menu bar *)
  let hbox = GPack.hbox ~width:999 ~height:50 ~packing:vbox#add () in
  let quit = GBin.event_box ~width:333 ~packing:hbox#add () in
  lquit_img (quit#add);
  ignore (quit#event#connect#button_press ~callback:(fun x -> exit 0; true));
  let back = GBin.event_box ~width:666 ~packing:hbox#add () in
  lmenu_img (back#add);
  ignore (back#event#connect#button_press ~callback:(fun x -> menu l window vbox st (); true));
  (* Event Box: test key press *)
  ignore (window#event#connect#key_press ~callback:((key_press)));
  (* Game Space *)
  let game = GPack.fixed ~width:999 ~height:750 ~packing:vbox#add () in
  match n with
  | 1 ->
    let bg = GMisc.image ~file:"../images/levels/bg1.png" () in
    game#put bg#coerce 0 0;
  | 2 ->
    let bg = GMisc.image ~file:"../images/levels/bg2.png" () in
    game#put bg#coerce 0 0;
  | 3 ->
    let bg = GMisc.image ~file:"../images/levels/bg3.png" () in
    game#put bg#coerce 0 0;
  | 4 ->
    let bg = GMisc.image ~file:"../images/levels/bg4.png" () in
    game#put bg#coerce 0 0;
  | 5 ->
    let bg = GMisc.image ~file:"../images/levels/bg5.png" () in
    game#put bg#coerce 0 0;
  | 6 ->
    let bg = GMisc.image ~file:"../images/levels/bg6.png" () in
    game#put bg#coerce 0 0;
  | 7 ->
    let bg = GMisc.image ~file:"../images/levels/bg7.png" () in
    game#put bg#coerce 0 0;
  | 8 ->
    let bg = GMisc.image ~file:"../images/levels/bg8.png" () in
    game#put bg#coerce 0 0;
  | 9 ->
    let bg = GMisc.image ~file:"../images/levels/bg9.png" () in
    game#put bg#coerce 0 0;
  | 10 ->
    let bg = GMisc.image ~file:"../images/levels/bg10.png" () in
    game#put bg#coerce 0 0;
  | 11 ->
    let bg = GMisc.image ~file:"../images/levels/bg11.png" () in
    game#put bg#coerce 0 0;
  | 12 ->
    let bg = GMisc.image ~file:"../images/levels/bg12.png" () in
    game#put bg#coerce 0 0;
  | 13 ->
    let bg = GMisc.image ~file:"../images/levels/bg13.png" () in
    game#put bg#coerce 0 0;
  | 14 ->
    let bg = GMisc.image ~file:"../images/levels/bg14.png" () in
    game#put bg#coerce 0 0;
  | _ ->
    let bg = GMisc.image ~file:"../images/levels/bg15.png" () in
    game#put bg#coerce 0 0;
  (* Display the windows and enter Gtk+ main loop *)
  window#show ();
  let st = init_state l in
  state_to_gui st. n l window vbox game;
  move st n l window vbox game
  (*Main.main ()*)

(**)
and move st n l window vbox game = ()

and state_to_gui locs n l window vbox game=
  match locs with
  | [] -> ()
  | h::t ->
    let obj = GMisc.image ~file:"../images/tiles/spike.png" () in
    game#put obj#coerce (50*x) (750-50*y);
  | ((x, y), Ground)::t ->
    let obj = GMisc.image ~file:"../images/tiles/stone1.png" () in
    game#put obj#coerce (50*x) (750-50*y);
  | ((x, y), Wall)::t ->
    let obj = GMisc.image ~file:"../images/tiles/stone2.png" () in
    game#put obj#coerce (50*x) (750-50*y);

(**)
and key_press s =
  let key = GdkEvent.Key.keyval s in
  match key with
  | 65362 (*up key*) -> exit 0; true
  | _ -> (); true

(**)
and menu l window vbox st () =
  (* Reset Window *)
  window#remove vbox#coerce;
  let vbox = GPack.vbox ~packing:window#add () in
  (* Menu bar *)
  let quit = GBin.event_box ~width:999 ~height:50 ~packing:vbox#add () in
    mquit_img (quit#add);
    ignore (quit#event#connect#button_press ~callback:(fun x -> exit 0; true));
  (* Title *)
  let vboxt = GPack.vbox ~height:270 ~packing:vbox#add () in
  let title = title_img (vboxt#add) in
  (* Menu Box *)
  let vboxl = GPack.vbox ~height:430 ~packing:vbox#add () in
  (* Levels 1-3 *)
  let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
  (* Levels 4-6 *)
  let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
  (* Levels 7-9 *)
  let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
  (* Levels 10-12 *)
  let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
  (* Levels 13-15 *)
  let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
  (* Menu Buttons *)
  match l with
  | 1 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    locked_level_img 2 (hbox1#add);
    locked_level_img 3 (hbox1#add);
    locked_stage_img 2 (hbox2#add);
    locked_stage_img 3 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 2 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    locked_level_img 3 (hbox1#add);
    locked_stage_img 2 (hbox2#add);
    locked_stage_img 3 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 3 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    locked_stage_img 2 (hbox2#add);
    locked_stage_img 3 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 4 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    locked_level_img 5 (hbox2#add);
    locked_level_img 6 (hbox2#add);
    locked_stage_img 3 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 5 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    locked_level_img 6 (hbox2#add);
    locked_stage_img 3 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 6 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    locked_stage_img 3 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 7 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    locked_level_img 8 (hbox3#add);
    locked_level_img 9 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 8 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    locked_level_img 9 (hbox3#add);
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 9 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    locked_stage_img 4 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 10 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 10 (button10#add);
      ignore (button10#event#connect#button_press
                ~callback:(fun x -> level 10 l window vbox st (); true));
    locked_level_img 11 (hbox4#add);
    locked_level_img 12 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 11 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 10 (button10#add);
      ignore (button10#event#connect#button_press
                ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 11 (button11#add);
      ignore (button11#event#connect#button_press
                ~callback:(fun x -> level 11 l window vbox st (); true));
    locked_level_img 12 (hbox4#add);
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 12 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 10 (button10#add);
      ignore (button10#event#connect#button_press
                ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 11 (button11#add);
      ignore (button11#event#connect#button_press
                ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 12 (button12#add);
      ignore (button12#event#connect#button_press
                ~callback:(fun x -> level 12 l window vbox st (); true));
    locked_stage_img 5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 13 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 10 (button10#add);
      ignore (button10#event#connect#button_press
                ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 11 (button11#add);
      ignore (button11#event#connect#button_press
                ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 12 (button12#add);
      ignore (button12#event#connect#button_press
                ~callback:(fun x -> level 12 l window vbox st (); true));
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img 13 (button13#add);
      ignore (button13#event#connect#button_press
                ~callback:(fun x -> level 13 l window vbox st (); true));
    locked_level_img 14 (hbox5#add);
    locked_level_img 15 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 14 ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 10 (button10#add);
      ignore (button10#event#connect#button_press
                ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 11 (button11#add);
      ignore (button11#event#connect#button_press
                ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 12 (button12#add);
      ignore (button12#event#connect#button_press
                ~callback:(fun x -> level 12 l window vbox st (); true));
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img 13 (button13#add);
      ignore (button13#event#connect#button_press
                ~callback:(fun x -> level 13 l window vbox st (); true));
    let button14 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img 14 (button14#add);
      ignore (button14#event#connect#button_press
                ~callback:(fun x -> level 14 l window vbox st (); true));
    locked_level_img 15 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | _ ->
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 1 (button1#add);
      ignore (button1#event#connect#button_press
                ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 2 (button2#add);
      ignore (button2#event#connect#button_press
                ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img 3 (button3#add);
      ignore (button3#event#connect#button_press
                ~callback:(fun x -> level 3 l window vbox st (); true));
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 4 (button4#add);
      ignore (button4#event#connect#button_press
                ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 5 (button5#add);
      ignore (button5#event#connect#button_press
                ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img 6 (button6#add);
      ignore (button6#event#connect#button_press
                ~callback:(fun x -> level 6 l window vbox st (); true));
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 7 (button7#add);
      ignore (button7#event#connect#button_press
                ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 8 (button8#add);
      ignore (button8#event#connect#button_press
                ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img 9 (button9#add);
      ignore (button9#event#connect#button_press
                ~callback:(fun x -> level 9 l window vbox st (); true));
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 10 (button10#add);
      ignore (button10#event#connect#button_press
                ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 11 (button11#add);
      ignore (button11#event#connect#button_press
                ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img 12 (button12#add);
      ignore (button12#event#connect#button_press
                ~callback:(fun x -> level 12 l window vbox st (); true));
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img 13 (button13#add);
      ignore (button13#event#connect#button_press
                ~callback:(fun x -> level 13 l window vbox st (); true));
    let button14 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img 14 (button14#add);
      ignore (button14#event#connect#button_press
                ~callback:(fun x -> level 14 l window vbox st (); true));
    let button15 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img 15 (button15#add);
      ignore (button15#event#connect#button_press
                ~callback:(fun x -> level 15 l window vbox st (); true));
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()

(**)
let main l () =
  let window = GWindow.window ~width:999 ~height:750
      ~title:"Caml 2D" ~show:true () in
  window#connect#destroy ~callback:Main.quit;
  let vbox = GPack.vbox ~packing:window#add () in
  let st = () in
  menu l window vbox st ()

(**)
let () = main 15 ()
