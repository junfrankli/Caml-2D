open Graphics
open State
open Camlimages
open Png
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
let unlocked_img1 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg1.png" ()
let unlocked_img2 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg2.png" ()
let unlocked_img3 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg3.png" ()
let unlocked_img4 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg4.png" ()
let unlocked_img5 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg5.png" ()
let unlocked_img6 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg6.png" ()
let unlocked_img7 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg7.png" ()
let unlocked_img8 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg8.png" ()
let unlocked_img9 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg9.png" ()
let unlocked_img10 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg10.png" ()
let unlocked_img11 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg11.png" ()
let unlocked_img12 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg12.png" ()
let unlocked_img13 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg13.png" ()
let unlocked_img14 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg14.png" ()
let unlocked_img15 k = GMisc.image ~packing:k
    ~file:"../images/levels/unlocked/bg15.png" ()

(* Images: locked levels *)
let locked_img_wide2 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg_wide2.png" ()
let locked_img_wide3 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg_wide3.png" ()
let locked_img_wide4 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg_wide4.png" ()
let locked_img_wide5 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg_wide5.png" ()
let locked_img2 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg2.png" ()
let locked_img3 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg3.png" ()
let locked_img4 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg4.png" ()
let locked_img5 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg5.png" ()
let locked_img6 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg6.png" ()
let locked_img7 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg7.png" ()
let locked_img8 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg8.png" ()
let locked_img9 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg9.png" ()
let locked_img10 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg10.png" ()
let locked_img11 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg11.png" ()
let locked_img12 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg12.png" ()
let locked_img13 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg13.png" ()
let locked_img14 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg14.png" ()
let locked_img15 k = GMisc.image ~packing:k
    ~file:"../images/levels/locked/bg15.png" ()

(*Game Images*)
let test_image = Png.load_as_rgb24 "../images/levels/bg1.png" [] |> Graphic_image.array_of_image

(**)
let rec game n l window vbox st () =
  Graphics.draw_image (Graphics.make_image test_image) 0 0;
  let e = wait_next_event [Key_pressed] in
  let key_description = if e.keypressed then Printf.sprintf "Key %c was pressed" e.key else "" in
  clear_graph ();
  moveto 0 100; draw_string key_description;
  if e.key <> '\027' then game n l window vbox st () else close 2 window vbox st ()

(**)
and close l window vbox st () =
  Graphics.close_graph ();
  menu l window vbox st ()

(**)
and level n l window vbox st () =
  Graphics.open_graph " 1000x750";
  game n l window vbox st ()

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
  (* Menu *)
  let vboxl = GPack.vbox ~height:430 ~packing:vbox#add () in
  match l with
  | 1 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    locked_img2 (hbox1#add);
    locked_img3 (hbox1#add);
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide2 (hbox2#add);
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide3 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 2 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    locked_img3 (hbox1#add);
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide2 (hbox2#add);
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide3 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 3 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide2 (hbox2#add);
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide3 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 4 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    locked_img5 (hbox2#add);
    locked_img6 (hbox2#add);
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide3 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 5 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    locked_img6 (hbox2#add);
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide3 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 6 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide3 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 7 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    locked_img8 (hbox3#add);
    locked_img9 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 8 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    locked_img9 (hbox3#add);
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 9 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide4 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 10 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img10 (button10#add);
      ignore (button10#event#connect#button_press ~callback:(fun x -> level 10 l window vbox st (); true));
    locked_img11 (hbox4#add);
    locked_img12 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 11 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img10 (button10#add);
      ignore (button10#event#connect#button_press ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img11 (button11#add);
      ignore (button11#event#connect#button_press ~callback:(fun x -> level 11 l window vbox st (); true));
    locked_img12 (hbox4#add);
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 12 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img10 (button10#add);
      ignore (button10#event#connect#button_press ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img11 (button11#add);
      ignore (button11#event#connect#button_press ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img12 (button12#add);
      ignore (button12#event#connect#button_press ~callback:(fun x -> level 12 l window vbox st (); true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    locked_img_wide5 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 13 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img10 (button10#add);
      ignore (button10#event#connect#button_press ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img11 (button11#add);
      ignore (button11#event#connect#button_press ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img12 (button12#add);
      ignore (button12#event#connect#button_press ~callback:(fun x -> level 12 l window vbox st (); true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img13 (button13#add);
      ignore (button13#event#connect#button_press ~callback:(fun x -> level 13 l window vbox st (); true));
    locked_img14 (hbox5#add);
    locked_img15 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | 14 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img10 (button10#add);
      ignore (button10#event#connect#button_press ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img11 (button11#add);
      ignore (button11#event#connect#button_press ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img12 (button12#add);
      ignore (button12#event#connect#button_press ~callback:(fun x -> level 12 l window vbox st (); true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img13 (button13#add);
      ignore (button13#event#connect#button_press ~callback:(fun x -> level 13 l window vbox st (); true));
    let button14 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img14 (button14#add);
      ignore (button14#event#connect#button_press ~callback:(fun x -> level 14 l window vbox st (); true));
    locked_img15 (hbox5#add);
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()
  | _ ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img1 (button1#add);
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l window vbox st (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img2 (button2#add);
      ignore (button2#event#connect#button_press ~callback:(fun x -> level 2 l window vbox st (); true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      unlocked_img3 (button3#add);
      ignore (button3#event#connect#button_press ~callback:(fun x -> level 3 l window vbox st (); true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img4 (button4#add);
      ignore (button4#event#connect#button_press ~callback:(fun x -> level 4 l window vbox st (); true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img5 (button5#add);
      ignore (button5#event#connect#button_press ~callback:(fun x -> level 5 l window vbox st (); true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      unlocked_img6 (button6#add);
      ignore (button6#event#connect#button_press ~callback:(fun x -> level 6 l window vbox st (); true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img7 (button7#add);
      ignore (button7#event#connect#button_press ~callback:(fun x -> level 7 l window vbox st (); true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img8 (button8#add);
      ignore (button8#event#connect#button_press ~callback:(fun x -> level 8 l window vbox st (); true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      unlocked_img9 (button9#add);
      ignore (button9#event#connect#button_press ~callback:(fun x -> level 9 l window vbox st (); true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img10 (button10#add);
      ignore (button10#event#connect#button_press ~callback:(fun x -> level 10 l window vbox st (); true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img11 (button11#add);
      ignore (button11#event#connect#button_press ~callback:(fun x -> level 11 l window vbox st (); true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      unlocked_img12 (button12#add);
      ignore (button12#event#connect#button_press ~callback:(fun x -> level 12 l window vbox st (); true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img13 (button13#add);
      ignore (button13#event#connect#button_press ~callback:(fun x -> level 13 l window vbox st (); true));
    let button14 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img14 (button14#add);
      ignore (button14#event#connect#button_press ~callback:(fun x -> level 14 l window vbox st (); true));
    let button15 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      unlocked_img15 (button15#add);
      ignore (button15#event#connect#button_press ~callback:(fun x -> level 15 l window vbox st (); true));
    (* Display the windows and enter Gtk+ main loop *)
    window#show ();
    Main.main ()

(**)
let main l st () =
  let window = GWindow.window ~width:999 ~height:750
      ~title:"Caml 2D" ~show:true () in
  window#connect#destroy ~callback:Main.quit;
  let vbox = GPack.vbox ~packing:window#add () in
  menu l window vbox st ()

let i = State.init_state 1

(**)
let () = main 1 i ()
