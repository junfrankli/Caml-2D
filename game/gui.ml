open Graphics
open GMain
open GdkKeysyms

let locale = GtkMain.Main.init ()

(* Image: title *)
let title_img k = GMisc.image ~packing:k
    ~file:"../images/title/title.png" ()

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

let level n l () =
  let window = GWindow.window ~width:999 ~height:750
      ~title:"Caml 2D" ~show:true () in
  let vbox = GPack.vbox ~packing:window#add () in
  window#connect#destroy ~callback:Main.quit;
  let eventbox = GBin.event_box ~packing:vbox#add () in
  (* Menu bar *)
  let menubar = GMenu.menu_bar ~packing:vbox#pack () in
  let factory = new GMenu.factory menubar in
  let accel_group = factory#accel_group in
  let file_menu = factory#add_submenu "File" in
  (* File menu *)
  let factory = new GMenu.factory file_menu ~accel_group in
  factory#add_item "Quit" ~key:_Q ~callback: Main.quit;
  (* Display the windows and enter Gtk+ main loop *)
  window#add_accel_group accel_group;
  window#show ();
  Main.main ()

let main l () =
  (* Window *)
  let window = GWindow.window ~width:999 ~height:750
      ~title:"Caml 2D" ~show:true () in
  let vbox = GPack.vbox ~packing:window#add () in
  window#connect#destroy ~callback:Main.quit;

  (* Menu bar *)
  let menubar = GMenu.menu_bar ~height:20 ~packing:vbox#pack () in
  menubar#misc#modify_bg [(`NORMAL, `NAME "light gray")];
  let factory = new GMenu.factory menubar in
  let accel_group = factory#accel_group in
  let file_menu = factory#add_submenu "File" in

  (* File menu *)
  let quit = new GMenu.factory file_menu ~accel_group in
  quit#add_item "Quit" ~key:_Q ~callback: Main.quit;

  (* Title *)
  let vboxt = GPack.vbox ~height:300 ~packing:vbox#add () in
  let title = title_img (vboxt#add) in

  (* Menu *)
  let vboxl = GPack.vbox ~height:430 ~packing:vbox#add () in
  match l with
  | 1 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let locked2 = locked_img2 (hbox1#add) in
    let locked3 = locked_img3 (hbox1#add) in
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_1 = locked_img_wide2 (hbox2#add) in
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_2 = locked_img_wide3 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 2 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked3 = locked_img3 (hbox1#add) in
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_1 = locked_img_wide2 (hbox2#add) in
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_2 = locked_img_wide3 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 3 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_1 = locked_img_wide2 (hbox2#add) in
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_2 = locked_img_wide3 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 4 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked5 = locked_img5 (hbox2#add) in
    let locked6 = locked_img6 (hbox2#add) in
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_2 = locked_img_wide3 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 5 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked6 = locked_img6 (hbox2#add) in
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_2 = locked_img_wide3 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 6 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_2 = locked_img_wide3 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 7 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked8 = locked_img8 (hbox3#add) in
    let locked9 = locked_img9 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 8 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked9 = locked_img9 (hbox3#add) in
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 9 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_3 = locked_img_wide4 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 10 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img10 = unlocked_img10 (button10#add) in
      button10#event#add [`BUTTON_PRESS];
      ignore (button10#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked11 = locked_img11 (hbox4#add) in
    let locked12 = locked_img12 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 11 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img10 = unlocked_img10 (button10#add) in
      button10#event#add [`BUTTON_PRESS];
      ignore (button10#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img11 = unlocked_img11 (button11#add) in
      button11#event#add [`BUTTON_PRESS];
      ignore (button11#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked12 = locked_img12 (hbox4#add) in
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 12 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img10 = unlocked_img10 (button10#add) in
      button10#event#add [`BUTTON_PRESS];
      ignore (button10#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img11 = unlocked_img11 (button11#add) in
      button11#event#add [`BUTTON_PRESS];
      ignore (button11#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img12 = unlocked_img12 (button12#add) in
      button12#event#add [`BUTTON_PRESS];
      ignore (button12#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let locked_wide_4 = locked_img_wide5 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 13 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img10 = unlocked_img10 (button10#add) in
      button10#event#add [`BUTTON_PRESS];
      ignore (button10#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img11 = unlocked_img11 (button11#add) in
      button11#event#add [`BUTTON_PRESS];
      ignore (button11#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img12 = unlocked_img12 (button12#add) in
      button12#event#add [`BUTTON_PRESS];
      ignore (button12#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      let img13 = unlocked_img13 (button13#add) in
      button13#event#add [`BUTTON_PRESS];
      ignore (button13#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked14 = locked_img14 (hbox5#add) in
    let locked15 = locked_img15 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | 14 ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img10 = unlocked_img10 (button10#add) in
      button10#event#add [`BUTTON_PRESS];
      ignore (button10#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img11 = unlocked_img11 (button11#add) in
      button11#event#add [`BUTTON_PRESS];
      ignore (button11#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img12 = unlocked_img12 (button12#add) in
      button12#event#add [`BUTTON_PRESS];
      ignore (button12#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      let img13 = unlocked_img13 (button13#add) in
      button13#event#add [`BUTTON_PRESS];
      ignore (button13#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button14 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      let img14 = unlocked_img14 (button14#add) in
      button14#event#add [`BUTTON_PRESS];
      ignore (button14#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let locked15 = locked_img15 (hbox5#add) in
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()
  | _ ->
    (* Levels 1-3 *)
    let hbox1 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button1 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img1 = unlocked_img1 (button1#add) in
      button1#event#add [`BUTTON_PRESS];
      ignore (button1#event#connect#button_press ~callback:(fun x -> level 1 l (); true));
    let button2 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img2 = unlocked_img2 (button2#add) in
      button2#event#add [`BUTTON_PRESS];
      ignore (button2#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button3 = GBin.event_box ~width:333 ~packing:hbox1#add () in
      let img3 = unlocked_img3 (button3#add) in
      button3#event#add [`BUTTON_PRESS];
      ignore (button3#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 4-6 *)
    let hbox2 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button4 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img4 = unlocked_img4 (button4#add) in
      button4#event#add [`BUTTON_PRESS];
      ignore (button4#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button5 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img5 = unlocked_img5 (button5#add) in
      button5#event#add [`BUTTON_PRESS];
      ignore (button5#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button6 = GBin.event_box ~width:333 ~packing:hbox2#add () in
      let img6 = unlocked_img6 (button6#add) in
      button6#event#add [`BUTTON_PRESS];
      ignore (button6#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 7-9 *)
    let hbox3 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button7 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img7 = unlocked_img7 (button7#add) in
      button7#event#add [`BUTTON_PRESS];
      ignore (button7#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button8 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img8 = unlocked_img8 (button8#add) in
      button8#event#add [`BUTTON_PRESS];
      ignore (button8#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button9 = GBin.event_box ~width:333 ~packing:hbox3#add () in
      let img9 = unlocked_img9 (button9#add) in
      button9#event#add [`BUTTON_PRESS];
      ignore (button9#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 10-12 *)
    let hbox4 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button10 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img10 = unlocked_img10 (button10#add) in
      button10#event#add [`BUTTON_PRESS];
      ignore (button10#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button11 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img11 = unlocked_img11 (button11#add) in
      button11#event#add [`BUTTON_PRESS];
      ignore (button11#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button12 = GBin.event_box ~width:333 ~packing:hbox4#add () in
      let img12 = unlocked_img12 (button12#add) in
      button12#event#add [`BUTTON_PRESS];
      ignore (button12#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Levels 13-15 *)
    let hbox5 = GPack.hbox ~height:86 ~packing:vboxl#add () in
    let button13 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      let img13 = unlocked_img13 (button13#add) in
      button13#event#add [`BUTTON_PRESS];
      ignore (button13#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button14 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      let img14 = unlocked_img14 (button14#add) in
      button14#event#add [`BUTTON_PRESS];
      ignore (button14#event#connect#button_press ~callback:(fun x -> exit 0; true));
    let button15 = GBin.event_box ~width:333 ~packing:hbox5#add () in
      let img15 = unlocked_img15 (button15#add) in
      button15#event#add [`BUTTON_PRESS];
      ignore (button15#event#connect#button_press ~callback:(fun x -> exit 0; true));
    (* Display the windows and enter Gtk+ main loop *)
    window#add_accel_group accel_group;
    window#show ();
    Main.main ()

let () = main 5 ()
