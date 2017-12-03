type aabb = {
  center : float*float;
  width_rad : float;
  height_rad : float

}



let get_aabb ob =
  let pos_x = ob.movement.pos.x in
  let pos_y = ob.movement.pos.y in
  let size_x = ob.size.x in
  let size_y = ob.size.y in
  {center = (pos_x,pos_y);
   width_rad = size_x/.2.0;
   height_rad = size_y/.2.0}


let aabb_collision ob1 ob2 =
  let box1 = get_aabb ob1 in
  let box2 = get_aabb ob2 in
  let dx = (fst box1.center) -. (fst box2.center) in
  let px = (box1.width_rad+.box2.width_rad-. (abs_float dx)) in
  if px <= 0.0 then false else let dy = (snd box1.center) -. (snd box2.center) in
  let py = (box1.height_rad+.box2.height_rad-. (abs_float dy)) in
    if py <= 0.0 then false else true
