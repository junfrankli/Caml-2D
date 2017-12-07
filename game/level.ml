type level = {
  l : int;
  obj_list : (string*int*int) list;
  start_pos : int*int;
  exit : int*int;
}

let level1 = {
  l = 1;
  obj_list = [("cobble2",0,0);("cobble2",1,0);("cobble2",2,0);("cobble2",3,0);
              ("cobble2",4,0);("cobble2",5,0);("cobble2",6,0);("cobble2",7,0)
             ;("cobble2",8,0);("cobble2",9,0);("cobble2",10,0);("cobble2",11,0);("cobble2",12,0);
              ("cobble2",13,0);("cobble2",14,0);("cobble2",15,0);("cobble2",16,0)
             ;("cobble2",17,0);("cobble2",18,0);("cobble2",19,0);
              ("cobble2",0,1);("cobble2",1,1);("cobble1",2,1);("cobble1",3,1);
              ("cobble1",4,1);("cobble1",5,1);("cobble1",6,1);("cobble1",7,1)
             ;("cobble1",8,1);("cobble1",9,1);("cobble1",10,1);("cobble1",11,1);("cobble2",12,1);
              ("cobble2",13,1);("cobble2",14,1);("cobble2",15,1);("cobble2",16,1)
             ;("cobble2",17,1);("cobble2",18,1);("cobble2",19,1);
              ("cobble2",0,2);("cobble2",1,2);("cobble2",12,2);("cobble2",13,2);
              ("cobble2",14,2);("cobble2",15,2);("cobble2",16,2);("cobble2",17,2);
              ("cobble2",18,2);("cobble2",19,2);
              ("cobble2",0,3);("cobble2",1,3);("cobble1",12,3);("cobble1",13,3);
              ("cobble1",14,3);("cobble1",15,3);("cobble1",16,3);("cobble2",17,3);
              ("cobble2",18,3);("cobble2",19,3);("cobble2",0,4);("cobble2",1,4);
              ("cobble2",17,4);
              ("cobble2",18,4);("cobble2",19,4);
              ("cobble2",0,5);("cobble2",1,5);
              ("cobble1",17,5);
              ("cobble1",18,5);("cobble2",19,5);
              ("cobble2",0,6);("cobble2",1,6);
              ("cobble2",0,7);("cobble2",1,7);
              ("cobble2",0,8);("cobble2",1,8);
              ("cobble2",0,9);("cobble2",1,9);
              ("cobble2",0,10);("cobble2",1,10);
              ("cobble1",0,11);("cobble1",1,11);
              ("cobble2",19,6);
              ("cobble2",19,7);
              ("cobble2",19,8);
              ("cobble2",19,9);
              ("cobble2",19,10);
              ("cobble2",19,11);
              ("cobble2",19,12);
              ("cobble2",19,13);
              ("cobble2",19,14);
              ("cobble1",8,9);("cobble1",9,9);("cobble1",10,9);("cobble1",11,9);("cobble1",12,9);
              ("cobble1",13,9);
             ];
  start_pos = (3,2);
  exit = (10,10)
}

let level2 = {
  l=2;
  obj_list = [("uspike",0,0);("uspike",1,0);("uspike",2,0);("uspike",3,0);
              ("uspike",4,0);("uspike",5,0);("uspike",6,0);("uspike",7,0)
             ;("uspike",8,0);("uspike",9,0);("uspike",10,0);("uspike",11,0);("uspike",12,0);
              ("uspike",13,0);("uspike",14,0);("uspike",15,0);("uspike",16,0)
             ;("uspike",17,0);("uspike",18,0);("uspike",19,0);("sand2",0,2)
             ;("sand2",1,2);("sand2",2,2);("sand1",0,3)
             ;("sand1",1,3);("sand1",2,3);("sand1",5,5);("sand1",6,5)
             ;("sand1",3,8);("sand1",4,8);("uspike",3,9);("sand2",8,1);
              ("sand2",9,1);("sand2",8,2);
              ("sand2",9,2);("sand2",8,3);
              ("sand2",9,3);("sand2",8,4);
              ("sand2",9,4);("sand2",8,5);
              ("sand2",9,5);("sand2",8,6);
              ("sand2",9,6);("sand2",8,7);
              ("sand2",9,7);("sand2",8,8);
              ("sand2",9,8);("sand2",8,9);
              ("sand2",9,9);("sand2",8,10);
              ("sand2",9,10);("sand1",8,11);
              ("sand1",9,11);("lspike",7,10);
              ("lspike",7,9);("rspike",10,10);
              ("rspike",10,9);("sand1",10,4);
              ("sand1",11,4);("sand1",12,1);
              ("sand1",13,1);("uspike",12,2);
              ("uspike",13,2);("dspike",14,5);
              ("dspike",15,5);("sand2",14,6);
              ("sand2",15,6);("sand2",14,7);
              ("sand2",15,7);("sand2",14,8);
              ("sand2",15,8);("sand2",14,9);
              ("sand2",15,9);("sand2",14,10);
              ("sand2",15,10);("sand2",14,11);
              ("sand2",15,11);("sand2",14,12);
              ("sand2",15,12);("sand2",14,13);
              ("sand2",15,13);("sand2",14,14);
              ("sand2",15,14);("sand1",11,1);
              ("uspike",11,2);("sand1",12,2);
              ("sand1",13,2);("sand1",14,2);
             ];
  start_pos = (0,4);
  exit = (19,3)
}

let level3 = {
  l=3;
  obj_list = [("sand1",0,0);("sand1",1,0);("sand1",2,0);("sand1",3,0);
              ("uspike",4,0);("uspike",5,0);("uspike",6,0);("uspike",7,0)
             ;("uspike",8,0);("uspike",9,0);("sand2",10,0);("sand2",11,0);("sand2",12,0);
              ("sand2",13,0);("sand2",14,0);("sand2",15,0);("sand2",16,0)
             ;("sand2",17,0);("sand2",18,0);("sand2",19,0);("sand1",2,2);
              ("sand1",3,2);("sand1",10,1);("sand1",11,1);("sand1",12,1);
              ("sand1",13,1);("sand1",14,1);("sand1",15,1);("sand1",16,1)
             ;("sand1",17,1);("sand1",18,1);("sand1",19,1);("uspike_b",12,2)
             ;("uspike_t",12,3);("uspike_b",16,2);("uspike_t",16,3);("lspike",9,6)
             ;("lspike",9,7);("sand2",10,6);("sand2",11,6);("sand2",12,6)
             ;("sand2",13,6);("sand2",14,6);("sand2",15,6);("sand2",16,6)
             ;("sand2",17,6);("sand2",18,6);("sand2",19,6)
             ;("sand2",10,7);("sand2",11,7);("sand2",12,7)
             ;("sand2",13,7);("sand2",14,7);("sand2",15,7);("sand2",16,7)
             ;("sand2",17,7);("sand2",18,7);("sand2",19,7)
             ;("sand2",10,8);("sand2",11,8);("sand2",12,8)
             ;("sand2",13,8);("sand2",14,8);("sand2",15,8);("sand2",16,8)
             ;("sand2",17,8);("sand2",18,8);("sand2",19,8)
             ;("sand1",10,9);("sand1",11,9);("sand1",12,9)
             ;("sand1",13,9);("sand1",14,9);("sand1",15,9);("sand1",16,9)
             ;("sand1",17,9);("sand1",18,9);("sand1",19,9);("dspike_b",14,5)
             ;("dspike_t",14,4);("dspike_b",18,5);("dspike_t",18,4)
             ];
  start_pos = (0,1);
  exit = (19,2)
}

let level4 = {
  l=4;
  obj_list = [("sand2",0,0);("sand2",1,0);("sand2",2,0);("sand2",3,0);
              ("sand2",4,0);("sand2",5,0);("sand2",6,0);("sand2",7,0)
             ;("sand2",8,0);("sand2",9,0);("sand2",10,0);("sand2",11,0);("sand2",12,0);
              ("sand2",13,0);("sand2",14,0);("sand2",15,0);("sand2",16,0)
             ;("sand2",17,0);("sand2",18,0);("sand2",19,0);
              ("sand2",0,1);("sand2",1,1);("sand1",2,1);("sand1",3,1);
              ("sand1",4,1);("sand1",5,1);("sand1",6,1);("sand1",7,1)
             ;("sand1",8,1);("sand1",9,1);("sand1",10,1);("sand1",11,1);("sand1",12,1);
              ("sand1",13,1);("sand1",14,1);("sand1",15,1);("sand1",16,1)
             ;("sand1",17,1);("sand2",18,1);("sand2",19,1);
              ("sand2",0,2);("sand2",1,2);
              ("sand2",0,3);("sand2",1,3);
              ("sand2",0,4);("sand2",1,4);
              ("sand2",0,5);("sand2",1,5);
              ("sand2",0,6);("sand2",1,6);
              ("sand2",0,7);("sand2",1,7);
              ("sand2",0,8);("sand2",1,8);
              ("sand2",0,9);("sand2",1,9);
              ("sand2",0,10);("sand2",1,10);
              ("sand2",0,11);("sand2",1,11);
              ("sand1",0,12);("sand1",1,12);
              ("uspike",2,2);("rspike",2,10);("rspike",2,11);
              ("lspike",3,5);("lspike",3,6);
              ("sand2",4,5);("sand2",5,5);
              ("sand2",4,6);("sand2",5,6);
              ("sand2",4,7);("sand2",5,7);
              ("sand2",4,8);("sand2",5,8);
              ("sand2",4,9);("sand2",5,9);
              ("sand2",4,10);("sand2",5,10);
              ("sand2",4,11);("sand2",5,11);
              ("sand2",4,12);("sand2",5,12);
              ("sand2",4,13);("sand2",5,13);
              ("sand2",4,14);("sand2",5,14);
              ("sand2",14,5);("sand2",15,5);
              ("sand2",14,6);("sand2",15,6);
              ("sand2",14,7);("sand2",15,7);
              ("sand2",14,8);("sand2",15,8);
              ("sand2",14,9);("sand2",15,9);
              ("sand2",14,10);("sand2",15,10);
              ("sand2",14,11);("sand2",15,11);
              ("sand2",14,12);("sand2",15,12);
              ("sand2",14,13);("sand2",15,13);
              ("sand2",14,14);("sand2",15,14);
              ("sand1",6,5);("sand1",7,5);
              ("sand1",8,5);("sand1",9,5);
              ("sand1",10,5);("sand1",11,5);
              ("sand1",12,5);("sand1",13,5);
              ("sand1",17,4);("sand1",17,8);
              ("dspike",17,7);
              ("sand2",18,2);("sand2",19,2);
              ("sand2",18,3);("sand2",19,3);
              ("sand2",18,4);("sand2",19,4);
              ("sand2",18,5);("sand2",19,5);
              ("sand2",18,6);("sand2",19,6);
              ("sand2",18,7);("sand2",19,7);
              ("sand2",18,8);("sand2",19,8);
              ("sand2",18,9);("sand2",19,9);
              ("sand2",18,10);("sand2",19,10);
              ("sand2",18,11);("sand2",19,11);
              ("sand1",18,12);("sand1",19,12);];
  start_pos = (0,13);
  exit = (19,13)
}

let level5 = {
  l=5;
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
              ("stone1",0,8);("stone1",1,8);("stone1",2,8);("stone2",3,8);
              ("stone2",3,9);("stone2",3,10);("stone1",3,11);("stone1",4,11);
              ("stone1",5,11);("stone1",6,8);("stone1",7,8);("stone1",8,8);
              ("stone1",9,11);("stone1",10,11);("stone1",11,11);("stone1",12,8);
              ("stone1",13,8);("stone1",14,8);("stone1",15,11);("stone1",16,11);
              ("stone1",17,11);("stone1",18,11);("stone1",19,11);("uspike",6,9);
              ("uspike",7,9);("uspike",8,9);("uspike",12,9);("uspike",13,9);
              ("uspike",14,9);("lspike",14,11)];
  start_pos = (0,9);
  exit = (19,12)
}

let level6 = {
  l = 6;
  obj_list = [("blade",0,14);("blade",0,13);("blade",1,4);("blade",2,4);
              ("blade",3,4);("blade",4,4);("blade",4,5);("blade",1,5);("stone1",1,6);
              ("stone1",0,6);("stone1",4,6);("blade",2,8);("stone1",2,9)
             ;("stone1",1,9);("stone1",0,9);("stone1",4,12);("stone1",5,12)
             ;("blade",6,12);("blade",3,12);("stone2",5,11);("stone2",5,10)
             ;("stone2",5,9);("stone2",5,8);("stone2",5,7);("stone2",5,6)
             ;("stone1",5,4);("stone1",6,4);("stone1",7,4);("blade",8,4)
             ;("blade",6,7);("blade",7,8);("blade",8,9);("blade",8,10);("blade",7,11)
             ;("blade",9,5);("blade",10,6);("blade",11,7);("blade",12,8);("blade",12,9)
             ;("blade",12,10);("blade",12,11);("blade",11,12);("blade",10,13)
             ;("blade",9,14)];
  start_pos = (0,7);
  exit = (5,5)
}


  let level8 = {
    l = 8;
    obj_list = [("ground",0,0);("ground",0,1);("ground",0,2);("ground",0,3);
                ("ground",0,4);("fire",0,5);("fire",0,6);("fire",0,7);
                ("fire",0,8);("fire",0,9);("fire",0,10);("fire",0,11);
                ("fire",0,12);("fire",0,13);("ground",1,0);("ground",1,1);
                ("fire",1,2);("fire",1,3);("fire",1,4);("ground",2,0);
                ("fire",2,1);("ground",3,0);("fire",3,1);("ground",3,8);
                ("fire",3,9);("fire",3,12);("ground",3,13);("ground",4,0);
                ("ground",4,1);("ground",4,8);("fire",4,9);("fire",4,12);
                ("ground",4,13);("ground",5,0);("ground",5,1);("ground",5,8);
                ("ground",5,13);("fire",6,0);("ground",6,8);("fire",6,9);
                ("fire",6,12);("ground",6,13);("ground",7,0);("ground",7,1);
                ("ground",7,8);("ground",7,13);("ground",8,0);("ground",8,1);
                ("ground",8,8);("ground",8,13);("fire",9,0);("fire",9,4);
                ("ground",9,5);("ground",9,6);("fire",9,7);("fire",10,0);
                ("fire",10,4);("ground",10,5);("ground",10,6);("fire",10,7);
                ("ground",11,0);("ground",11,1);("ground",11,8);("ground",12,0);
                ("ground",12,1);("ground",12,2);("ground",12,8);("ground",13,0);
                ("ground",13,1);("ground",13,2);("ground",13,3);("ground",13,8);
                ("ground",14,0);("ground",14,1);("ground",14,2);("fire",14,7);
                ("fire",15,0);("fire",15,1);("fire",15,7);("fire",16,0);
                ("ground",16,8);("ground",17,0);("ground",17,3);("ground",17,8);
                ("ground",18,0);("ground",18,3);("ground",18,8);
                ("ground",19,0);("ground",19,3);("ground",19,8)];
    start_pos = (19,9);
    exit = (19,1)
  }

let level9 = {
  l = 9;
  obj_list = [("ground",0,0);("ground",0,1);("ground",0,2);("ground",0,3);
              ("ground",0,4);("ground",0,5);("ground",0,6);("ground",0,7);
              ("ground",0,8);("ground",0,9);("ground",0,10);("ground",0,11);
              ("ground",1,0);("ground",1,1);("ground",1,2);("ground",1,3);
              ("ground",1,4);("ground",1,5);("ground",1,6);("ground",1,7);
              ("ground",1,8);("ground",1,9);("fire",1,10);
              ("ground",2,0);("ground",2,1);("ground",2,2);("ground",2,3);
              ("ground",2,4);("ground",2,5);("ground",2,6);("ground",2,7);
              ("ground",2,8);("ground",2,9);("fire",2,10);
              ("ground",3,0);("ground",3,1);("ground",3,2);("ground",3,3);
              ("ground",3,4);("ground",3,5);("ground",3,6);("ground",3,7);
              ("ground",3,8);("ground",3,9);("fire",3,10);("ground",3,11);
              ("ground",4,0);("ground",4,1);("fire",4,2);("fire",4,3);
              ("fire",4,4);("fire",4,5);("ground",4,11);("fire",4,12);
              ("ground",5,0);("ground",5,1);("ground",5,9);("ground",5,11);
              ("ground",6,0);("ground",6,1);("fire",6,2);("fire",6,3);
              ("ground",6,9);("ground",6,11);("fire",6,12);
              ("ground",7,0);("ground",7,1);("fire",7,7);("fire",7,8);
              ("ground",7,9);("ground",7,11);("fire",7,12);
              ("ground",8,0);("ground",8,1);("fire",8,7);("fire",8,8);
              ("ground",8,9);("ground",8,11);
              ("ground",9,0);("ground",9,1);("fire",9,7);("fire",9,8);
              ("ground",9,9);("ground",9,11);
              ("ground",10,0);("ground",10,1);("fire",10,2);("fire",10,3);
              ("ground",10,9);("ground",10,11);
              ("ground",11,0);("ground",11,1);("fire",11,6);("ground",11,9);
              ("ground",11,11);
              ("ground",12,0);("ground",12,1);("fire",12,6);("ground",12,9);
              ("ground",12,11);
              ("ground",13,0);("ground",13,1);("fire",13,4);("fire",13,5);
              ("ground",13,6);("fire",13,7);("fire",13,8);("ground",13,9);
              ("ground",13,11);
              ("ground",14,0);("ground",14,1);("fire",14,6);("ground",14,9);
              ("ground",14,11);
              ("ground",15,0);("fire",15,1);("fire",15,6);("ground",15,9);
              ("ground",15,11);
              ("fire",16,0);("ground",16,9);("ground",16,11);
              ("ground",17,0);("ground",17,3);("ground",17,4);("ground",17,5);
              ("ground",17,6);("ground",17,7);("ground",17,8);("ground",17,9);
              ("ground",17,11);
              ("ground",18,0);("ground",18,3);("ground",18,4);("ground",18,5);
              ("ground",18,6);("ground",18,7);("ground",18,8);("ground",18,9);
              ("ground",19,0);("ground",19,3);("ground",19,4);("ground",19,5);
              ("ground",19,6);("ground",19,7);("ground",19,8);("ground",19,9);
              ("ground",19,11);];
  start_pos = (0,12);
  exit = (19,1)
}
