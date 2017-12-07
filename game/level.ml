



type level = {
  obj_list : (string*int*int) list;
  start_pos : int*int;
  exit : int*int;
}

let level1 = {
  obj_list = [("ground",0,0);("ground",1,0);("ground",2,0);("ground",3,0);
              ("ground",4,0);("ground",5,0);("ground",6,0);("ground",7,0)
             ;("ground",8,0);("ground",9,0);("ground",10,0);("ground",11,0);("ground",12,0);
              ("ground",13,0);("ground",14,0);("ground",15,0);("ground",16,0)
             ;("ground",17,0);("ground",18,0);("ground",19,0);
             ("ground",0,1);("ground",1,1);("grass",2,1);("grass",3,1);
             ("grass",4,1);("grass",5,1);("grass",6,1);("grass",7,1)
            ;("grass",8,1);("grass",9,1);("grass",10,1);("grass",11,1);("ground",12,1);
            ("ground",13,1);("ground",14,1);("ground",15,1);("ground",16,1)
             ;("ground",17,1);("ground",18,1);("ground",19,1);
             ("ground",0,2);("ground",1,2);("ground",12,2);("ground",13,2);
             ("ground",14,2);("ground",15,2);("ground",16,2);("ground",17,2);
             ("ground",18,2);("ground",19,2);
             ("ground",0,3);("ground",1,3);("grass",12,3);("grass",13,3);
             ("grass",14,3);("grass",15,3);("grass",16,3);("ground",17,3);
             ("ground",18,3);("ground",19,3);("ground",0,4);("ground",1,4);
             ("ground",17,4);
             ("ground",18,4);("ground",19,4);
             ("ground",0,5);("ground",1,5);
             ("grass",17,5);
             ("grass",18,5);("ground",19,5);
             ("ground",0,6);("ground",1,6);
             ("ground",0,7);("ground",1,7);
             ("ground",0,8);("ground",1,8);
             ("ground",0,9);("ground",1,9);
             ("ground",0,10);("ground",1,10);
             ("grass",0,11);("grass",1,11);
             ("ground",19,6);
             ("ground",19,7);
             ("ground",19,8);
             ("ground",19,9);
             ("ground",19,10);
             ("ground",19,11);
             ("ground",19,12);
             ("ground",19,13);
             ("ground",19,14);
             ("grass",8,9);("grass",9,9);("grass",10,9);("grass",11,9);("grass",12,9);
             ("grass",13,9);
             ];
  start_pos = (3,2);
  exit = (10,10)
}

let level2 = {
  obj_list = [("uspike",0,0);("uspike",1,0);("uspike",2,0);("uspike",3,0);
              ("uspike",4,0);("uspike",5,0);("uspike",6,0);("uspike",7,0)
             ;("uspike",8,0);("uspike",9,0);("uspike",10,0);("uspike",11,0);("uspike",12,0);
              ("uspike",13,0);("uspike",14,0);("uspike",15,0);("uspike",16,0)
             ;("uspike",17,0);("uspike",18,0);("uspike",19,0);("ground",0,2)
             ;("ground",1,2);("ground",2,2);("grass",0,3)
             ;("grass",1,3);("grass",2,3);("grass",5,5);("grass",6,5)
             ;("grass",3,8);("grass",4,8);("uspike",3,9);("ground",8,1);
              ("ground",9,1);("ground",8,2);
              ("ground",9,2);("ground",8,3);
              ("ground",9,3);("ground",8,4);
              ("ground",9,4);("ground",8,5);
              ("ground",9,5);("ground",8,6);
              ("ground",9,6);("ground",8,7);
              ("ground",9,7);("ground",8,8);
              ("ground",9,8);("ground",8,9);
              ("ground",9,9);("ground",8,10);
              ("ground",9,10);("grass",8,11);
              ("grass",9,11);("lspike",7,10);
              ("lspike",7,9);("rspike",10,10);
              ("rspike",10,9);("grass",10,4);
              ("grass",11,4);("grass",12,1);
              ("grass",13,1);("uspike",12,2);
              ("uspike",13,2);("dspike",14,5);
              ("dspike",15,5);("ground",14,6);
              ("ground",15,6);("ground",14,7);
              ("ground",15,7);("ground",14,8);
              ("ground",15,8);("ground",14,9);
              ("ground",15,9);("ground",14,10);
              ("ground",15,10);("ground",14,11);
              ("ground",15,11);("ground",14,12);
              ("ground",15,12);("ground",14,13);
              ("ground",15,13);("ground",14,14);
              ("ground",15,14);("grass",11,1);
              ("uspike",11,2);("grass",12,2);
              ("grass",13,2);("grass",14,2);
              ];
  start_pos = (0,4);
  exit = (19,3)
}

let level3 = {
  obj_list = [("grass",0,0);("grass",1,0);("ground",2,0);("ground",3,0);
              ("uspike",4,0);("uspike",5,0);("uspike",6,0);("uspike",7,0)
             ;("uspike",8,0);("uspike",9,0);("ground",10,0);("ground",11,0);("ground",12,0);
              ("ground",13,0);("ground",14,0);("ground",15,0);("ground",16,0)
             ;("ground",17,0);("ground",18,0);("ground",19,0);("grass",2,2);
              ("grass",3,2);("grass",10,1);("grass",11,1);("grass",12,1);
              ("grass",13,1);("grass",14,1);("grass",15,1);("grass",16,1)
             ;("grass",17,1);("grass",18,1);("grass",19,1);("uspike_b",12,2)
             ;("uspike_t",12,3);("uspike_b",16,2);("uspike_t",16,3);("lspike",9,6)
             ;("lspike",9,7);("ground",10,6);("ground",11,6);("ground",12,6)
             ;("ground",13,6);("ground",14,6);("ground",15,6);("ground",16,6)
             ;("ground",17,6);("ground",18,6);("ground",19,6)
             ;("ground",10,7);("ground",11,7);("ground",12,7)
             ;("ground",13,7);("ground",14,7);("ground",15,7);("ground",16,7)
             ;("ground",17,7);("ground",18,7);("ground",19,7)
             ;("ground",10,8);("ground",11,8);("ground",12,8)
             ;("ground",13,8);("ground",14,8);("ground",15,8);("ground",16,8)
             ;("ground",17,8);("ground",18,8);("ground",19,8)
             ;("grass",10,9);("grass",11,9);("grass",12,9)
             ;("grass",13,9);("grass",14,9);("grass",15,9);("grass",16,9)
             ;("grass",17,9);("grass",18,9);("grass",19,9);("dspike_b",14,5)
             ;("dspike_t",14,4);("dspike_b",18,5);("dspike_t",18,4)
             ];
  start_pos = (0,1);
  exit = (19,2)
}

let level4 = {
  obj_list = [("ground",0,0);("ground",1,0);("ground",2,0);("ground",3,0);
              ("ground",4,0);("ground",5,0);("ground",6,0);("ground",7,0)
             ;("ground",8,0);("ground",9,0);("ground",10,0);("ground",11,0);("ground",12,0);
              ("ground",13,0);("ground",14,0);("ground",15,0);("ground",16,0)
             ;("ground",17,0);("ground",18,0);("ground",19,0);
             ("ground",0,1);("ground",1,1);("grass",2,1);("grass",3,1);
             ("grass",4,1);("grass",5,1);("grass",6,1);("grass",7,1)
             ;("grass",8,1);("grass",9,1);("grass",10,1);("grass",11,1);("grass",12,1);
             ("grass",13,1);("grass",14,1);("grass",15,1);("grass",16,1)
             ;("grass",17,1);("ground",18,1);("ground",19,1);
              ("ground",0,2);("ground",1,2);
              ("ground",0,3);("ground",1,3);
              ("ground",0,4);("ground",1,4);
              ("ground",0,5);("ground",1,5);
              ("ground",0,6);("ground",1,6);
              ("ground",0,7);("ground",1,7);
              ("ground",0,8);("ground",1,8);
              ("ground",0,9);("ground",1,9);
              ("ground",0,10);("ground",1,10);
              ("ground",0,11);("ground",1,11);
              ("grass",0,12);("grass",1,12);
              ("uspike",2,2);("rspike",2,10);("rspike",2,11);
              ("rspike",3,5);("rspike",3,6);
              ("ground",4,5);("ground",5,5);
              ("ground",4,6);("ground",5,6);
              ("ground",4,7);("ground",5,7);
              ("ground",4,8);("ground",5,8);
              ("ground",4,9);("ground",5,9);
              ("ground",4,10);("ground",5,10);
              ("ground",4,11);("ground",5,11);
              ("ground",4,12);("ground",5,12);
              ("ground",4,13);("ground",5,13);
              ("ground",4,14);("ground",5,14);
              ("ground",14,5);("ground",15,5);
              ("ground",14,6);("ground",15,6);
              ("ground",14,7);("ground",15,7);
              ("ground",14,8);("ground",15,8);
              ("ground",14,9);("ground",15,9);
              ("ground",14,10);("ground",15,10);
              ("ground",14,11);("ground",15,11);
              ("ground",14,12);("ground",15,12);
              ("ground",14,13);("ground",15,13);
              ("ground",14,14);("ground",15,14);
              ("grass",6,5);("grass",7,5);
              ("grass",8,5);("grass",9,5);
              ("grass",10,5);("grass",11,5);
              ("grass",12,5);("grass",13,5);
              ("grass",17,4);("grass",17,8);
              ("dspike",17,7);
              ("ground",18,2);("ground",19,2);
              ("ground",18,3);("ground",19,3);
              ("ground",18,4);("ground",19,4);
              ("ground",18,5);("ground",19,5);
              ("ground",18,6);("ground",19,6);
              ("ground",18,7);("ground",19,7);
              ("ground",18,8);("ground",19,8);
              ("ground",18,9);("ground",19,9);
              ("ground",18,10);("ground",19,10);
              ("ground",18,11);("ground",19,11);
              ("grass",18,12);("grass",19,12);];
  start_pos = (0,13);
  exit = (19,13)
}

let level5 = {
  obj_list = [("uspike",0,0);("uspike",1,0);("uspike",2,0);("uspike",3,0);
              ("uspike",4,0);("uspike",5,0);("uspike",6,0);("uspike",7,0)
             ;("uspike",8,0);("uspike",9,0);("uspike",10,0);("uspike",11,0);("uspike",12,0);
              ("uspike",13,0);("uspike",14,0);("uspike",15,0);("uspike",16,0)
             ;("uspike",17,0);("uspike",18,0);("uspike",19,0);
              ("dspike",0,14);("dspike",1,14);("dspike",2,14);("dspike",3,14);
              ("dspike",4,14);("dspike",5,14);("dspike",6,14);("dspike",7,14)
             ;("dspike",8,14);("dspike",9,14);("dspike",10,14);("dspike",11,14);("dspike",12,14);
              ("dspike",13,14);("dspike",14,14);("dspike",15,14);("dspike",16,14)
             ;("dspike",17,14);("dspike",18,14);("dspike",19,14);
              ("grass",0,8);("grass",1,8);("grass",2,8);("ground",3,8);
              ("ground",3,9);("ground",3,10);("grass",3,11);("grass",4,11);
              ("grass",5,11);("grass",6,8);("grass",7,8);("grass",8,8);
              ("grass",9,11);("grass",10,11);("grass",11,11);("grass",12,8);
              ("grass",13,8);("grass",14,8);("grass",15,11);("grass",16,11);
              ("grass",17,11);("grass",18,11);("grass",19,11);("uspike",6,9);
              ("uspike",7,9);("uspike",8,9);("uspike",12,9);("uspike",13,9);
             ("uspike",14,9);("uspike",14,11)];


  start_pos = (0,9);
  exit = (19,12)
}

let level6 = {
  obj_list = [("fire",0,14);("fire",0,13);("fire",1,4);("fire",2,4);
             ("fire",3,4);("fire",4,4);];
  start_pos = (0,7);
  exit = (5,5)
}
