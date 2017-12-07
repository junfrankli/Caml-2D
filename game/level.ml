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
              ("sand2",15,14);("sand1",16,1);
              ("uspike",16,2);("sand1",17,2);
              ("sand1",18,2);("sand1",19,2);
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
              ("grass1",0,8);("grass1",1,8);("grass1",2,8);("grass2",3,8);
              ("grass2",3,9);("grass2",3,10);("grass1",3,11);("grass1",4,11);
              ("grass1",5,11);("grass1",6,8);("grass1",7,8);("grass1",8,8);
              ("grass1",9,11);("grass1",10,11);("grass1",11,11);("grass1",12,8);
              ("grass1",13,8);("grass1",14,8);("grass1",15,11);("grass1",16,11);
              ("grass1",17,11);("grass1",18,11);("grass1",19,11);("uspike",6,9);
              ("uspike",7,9);("uspike",8,9);("uspike",12,9);("uspike",13,9);
              ("uspike",14,9);("lspike",14,11)];
  start_pos = (0,9);
  exit = (19,12)
}

let level6 = {
  l = 6;
  obj_list = [("blade",0,14);("blade",0,13);("blade",1,4);("blade",2,4);
              ("blade",3,4);("blade",4,4);("blade",4,5);("blade",1,5);("grass1",1,6);
              ("grass1",0,6);("grass1",4,6);("blade",2,8);("grass1",2,9)
             ;("grass1",1,9);("grass1",0,9);("grass1",4,12);("grass1",5,12)
             ;("blade",6,12);("blade",3,12);("grass2",5,11);("grass2",5,10)
             ;("grass2",5,9);("grass2",5,8);("grass2",5,7);("grass2",5,6)
             ;("grass1",5,4);("grass1",6,4);("grass1",7,4);("blade",8,4)
             ;("blade",6,7);("blade",7,8);("blade",8,9);("blade",8,10);("blade",7,11)
             ;("blade",9,5);("blade",10,6);("blade",11,7);("blade",12,8);("blade",12,9)
             ;("blade",12,10);("blade",12,11);("blade",11,12);("blade",10,13)
             ;("blade",9,14)];
  start_pos = (0,7);
  exit = (5,5)
}


  let level7 = {
    l = 7;
    obj_list = [("grass2",0,0);("grass2",0,1);("grass2",0,2);("grass2",0,3);
                ("grass1",0,4);("blade",0,5);("blade",0,6);("blade",0,7);
                ("blade",0,8);("blade",0,9);("blade",0,10);("blade",0,11);
                ("blade",0,12);("blade",0,13);("grass2",1,0);("grass1",1,1);
                ("blade",1,2);("blade",1,3);("blade",1,4);("grass1",2,0);
                ("blade",2,1);("grass1",3,0);("blade",3,1);("grass1",3,8);
                ("blade",3,9);("blade",3,12);("grass1",3,13);("grass2",4,0);
                ("grass1",4,1);("grass1",4,8);("blade",4,9);("blade",4,12);
                ("grass1",4,13);("grass2",5,0);("grass1",5,1);("grass1",5,8);
                ("grass1",5,13);("blade",6,0);("grass1",6,8);("blade",6,9);
                ("blade",6,12);("grass1",6,13);("grass2",7,0);("grass1",7,1);
                ("grass1",7,8);("grass1",7,13);("grass2",8,0);("grass1",8,1);
                ("grass1",8,8);("grass1",8,13);("blade",9,0);("blade",9,4);
                ("grass2",9,5);("grass1",9,6);("blade",9,7);("blade",10,0);
                ("blade",10,4);("grass2",10,5);("grass1",10,6);("blade",10,7);
                ("grass2",11,0);("grass1",11,1);("grass1",11,8);("grass2",12,0);
                ("grass2",12,1);("grass1",12,2);("grass1",12,8);("grass2",13,0);
                ("grass2",13,1);("grass2",13,2);("grass1",13,3);("grass1",13,8);
                ("grass2",14,0);("grass2",14,1);("grass1",14,2);("blade",14,7);
                ("blade",15,0);("blade",15,1);("blade",15,7);("blade",16,0);
                ("grass1",16,8);("grass1",17,0);("grass1",17,3);("grass1",17,8);
                ("grass1",18,0);("grass1",18,3);("grass1",18,8);
                ("grass1",19,0);("grass1",19,3);("grass1",19,8)];
    start_pos = (19,9);
    exit = (19,1)
  }

let level8 = {
  l = 8;
  obj_list = [("grass2",0,0);("grass2",0,1);("grass2",0,2);("grass2",0,3);
              ("grass2",0,4);("grass2",0,5);("grass2",0,6);("grass2",0,7);
              ("grass2",0,8);("grass2",0,9);("grass2",0,10);("grass1",0,11);
              ("grass2",1,0);("grass2",1,1);("grass2",1,2);("grass2",1,3);
              ("grass2",1,4);("grass2",1,5);("grass2",1,6);("grass2",1,7);
              ("grass2",1,8);("grass1",1,9);("blade",1,10);
              ("grass2",2,0);("grass2",2,1);("grass2",2,2);("grass2",2,3);
              ("grass2",2,4);("grass2",2,5);("grass2",2,6);("grass2",2,7);
              ("grass2",2,8);("grass1",2,9);("blade",2,10);
              ("grass2",3,0);("grass2",3,1);("grass2",3,2);("grass2",3,3);
              ("grass2",3,4);("grass2",3,5);("grass2",3,6);("grass2",3,7);
              ("grass2",3,8);("grass1",3,9);("blade",3,10);("grass1",3,11);
              ("grass2",4,0);("grass1",4,1);("blade",4,2);("blade",4,3);
              ("blade",4,4);("blade",4,5);("grass1",4,11);("blade",4,12);
              ("grass2",5,0);("grass1",5,1);("grass1",5,9);("grass1",5,11);
              ("grass2",6,0);("grass1",6,1);("blade",6,2);("blade",6,3);
              ("grass1",6,9);("grass1",6,11);("blade",6,12);
              ("grass2",7,0);("grass1",7,1);("blade",7,7);("blade",7,8);
              ("grass1",7,9);("grass1",7,11);("blade",7,12);
              ("grass2",8,0);("grass1",8,1);("blade",8,7);("blade",8,8);
              ("grass1",8,9);("grass1",8,11);
              ("grass2",9,0);("grass1",9,1);("blade",9,7);("blade",9,8);
              ("grass1",9,9);("grass1",9,11);
              ("grass2",10,0);("grass1",10,1);("blade",10,2);("blade",10,3);
              ("grass1",10,9);("grass1",10,11);
              ("grass2",11,0);("grass1",11,1);("blade",11,6);("grass1",11,9);
              ("grass1",11,11);
              ("grass2",12,0);("grass1",12,1);("blade",12,6);("grass1",12,9);
              ("grass1",12,11);
              ("grass2",13,0);("grass1",13,1);("blade",13,4);("blade",13,5);
              ("grass1",13,6);("blade",13,7);("blade",13,8);("grass1",13,9);
              ("grass1",13,11);
              ("grass2",14,0);("grass1",14,1);("blade",14,6);("grass1",14,9);
              ("grass1",14,11);
              ("grass1",15,0);("blade",15,1);("blade",15,6);("grass1",15,9);
              ("grass1",15,11);
              ("blade",16,0);("grass1",16,9);("grass1",16,11);
              ("grass1",17,0);("grass2",17,3);("grass2",17,4);("grass2",17,5);
              ("grass2",17,6);("grass2",17,7);("grass2",17,8);("grass1",17,9);
              ("grass1",17,11);
              ("grass1",18,0);("grass2",18,3);("grass2",18,4);("grass2",18,5);
              ("grass2",18,6);("grass2",18,7);("grass2",18,8);("grass1",18,9);
              ("grass1",19,0);("grass2",19,3);("grass2",19,4);("grass2",19,5);
              ("grass2",19,6);("grass2",19,7);("grass2",19,8);("grass1",19,9);
              ("grass1",19,11);];
  start_pos = (0,12);
  exit = (19,1)
}

let level9 = {
  l = 9;
  obj_list = [("cobble1",1,0);("cobble1",1,1);("cobble1",1,2);("cobble1",1,3);
              ("cobble1",1,4);("cobble1",1,5);("cobble1",1,6);("cobble1",1,7);
              ("cobble1",1,8);("cobble1",1,9);("cobble1",1,10);
              ("cobble1",2,0);("fire",2,1);("fire",2,2);("fire",2,3);
              ("fire",2,4);("fire",2,5);("fire",2,6);("fire",2,7);
              ("fire",2,8);("cobble1",2,9);("cobble1",2,10);("cobble1",2,11);
              ("cobble1",3,0);("fire",3,1);("fire",3,9);
              ("cobble1",3,10);("cobble1",3,11);("cobble1",3,12);
              ("cobble1",4,0);("fire",4,1);("cobble1",4,3);("fire",4,10);
              ("cobble1",4,11);("cobble1",4,12);("cobble1",4,13);
              ("cobble1",5,0);("fire",5,1);("cobble1",5,3);("fire",5,11);
              ("cobble1",5,12);("cobble1",5,13);("cobble1",5,14);
              ("cobble1",6,0);("fire",6,1);
              ("cobble1",7,0);("fire",7,1);("cobble1",7,6);("cobble1",7,7);
              ("cobble1",7,12);("cobble1",7,13);("cobble1",7,14);
              ("cobble1",8,0);("fire",8,1);("fire",8,8);("fire",8,9);
              ("cobble1",9,0);("cobble1",9,1);("cobble1",9,2);("cobble1",9,3);
              ("cobble1",9,8);("cobble1",9,9);("cobble1",9,10);
              ("cobble1",9,11);("cobble1",9,12);("cobble1",9,13);
              ("cobble1",10,0);("fire",10,1);
              ("cobble1",11,0);("fire",11,1);("fire",11,7);("fire",11,8);
              ("cobble1",11,9);("cobble1",11,10);("cobble1",11,11);("cobble1",11,12);
              ("blade",11,13);("blade",11,14);
              ("cobble1",12,0);("cobble1",12,1);("cobble1",12,2);("cobble1",12,3);
              ("fire",13,0);("fire",13,1);
              ("fire",14,0);("fire",14,1);
              ("fire",15,0);
              ("fire",16,0);
              ("cobble1",17,0);
              ("cobble1",18,0);("cobble1",18,1);("cobble1",18,2);("cobble1",18,3);];
  start_pos = (9,14);
  exit = (18,1)
}

let level10 = {
  l = 10;
  obj_list = [("blade",0,0);("sand2",0,12);
              ("blade",1,0);("sand2",1,12);
              ("blade",2,0);("sand2",2,7);("sand2",2,12);
              ("blade",3,0);("sand2",3,3);("sand2",3,7);("sand2",3,12);
              ("blade",4,0);("sand2",4,3);("sand2",4,7);("sand2",4,12);
              ("blade",5,0);("sand2",5,3);("sand2",5,7);("sand2",5,12);
              ("blade",6,0);("sand2",6,3);("sand2",6,7);("sand2",6,12);
              ("blade",7,0);("blade",7,3);("blade",7,4);("blade",7,5);
              ("blade",7,6);("blade",7,7);("sand2",7,12);
              ("blade",8,0);("sand2",8,12);
              ("blade",9,0);("blade",10,0);];
  start_pos = (0,13);
  exit = (6,4)
}

let level11 = {
  l = 11;
  obj_list = [("sand1",7,0);("sand1",8,0);("sand1",9,0);("sand1",10,0);
              ("grass1",7,3);("grass1",8,3);("grass1",9,3);("grass1",10,3);
              ("grass2",7,6);("grass2",8,6);("grass2",9,6);("grass2",10,6);
              ("cobble1",7,9);("cobble1",8,9);("cobble1",9,9);("cobble1",10,9);
              ("sand2",7,12);("sand2",8,12);("sand2",9,12);("sand2",10,12);
              ("fire",1,0);
              ("fire",2,0);
              ("fire",3,0);
              ("fire",4,0);
              ("fire",5,0);
              ("fire",6,0);
              ("fire",11,0);
              ("fire",12,0);
              ("fire",13,0);
              ("fire",14,0);
              ("fire",15,0);
              ("fire",16,0);
              ("fire",17,0);
              ("fire",18,0);
              ("fire",19,0)];
  start_pos = (9,1);
  exit = (8,13);
}

let level12 = {
  l = 12;
  obj_list = [("cobble1",0,0);("cobble1",5,3);("cobble1",10,6);("cobble1",15,9);
              ("cobble1",19,13);
              ("uspike",1,0);
              ("uspike",2,0);
              ("uspike",3,0);
              ("uspike",4,0);
              ("uspike",5,0);
              ("uspike",6,0);
              ("uspike",7,0);
              ("uspike",8,0);
              ("uspike",9,0);
              ("uspike",10,0);
              ("uspike",11,0);
              ("uspike",12,0);
              ("uspike",13,0);
              ("uspike",14,0);
              ("uspike",15,0);
              ("uspike",16,0);
              ("uspike",17,0);
              ("uspike",18,0);
              ("uspike",19,0)];
  start_pos = (0,1);
  exit = (19,14);
}

let level13 = {
  l = 13;
  obj_list = [("cobble2",0,6);("cobble2",1,6);("cobble2",2,6);("cobble2",7,6);
              ("cobble2",8,6);("cobble2",9,6);("cobble2",10,6);("cobble2",11,6);
              ("cobble2",12,6);("cobble2",13,6);("cobble2",14,6);("cobble2",15,6);
              ("cobble2",16,6);("cobble2",17,6);("cobble2",18,6);("cobble2",19,6);
              ("cobble2",0,10);("cobble2",1,10);("cobble2",2,10);("cobble2",3,10);
              ("cobble2",4,10);("cobble2",5,10);("cobble2",6,10);("cobble2",7,10);
              ("cobble2",8,10);("cobble2",9,10);("cobble2",10,10);("cobble2",11,10);
              ("cobble2",12,10);("cobble2",17,10);("cobble2",18,10);("cobble2",19,10);
              ("blade",3,9);("blade",4,9);("blade",5,9);("blade",6,9);
              ("blade",13,7);("blade",14,7);("blade",15,7);("blade",16,7);
              ("uspike",1,0);
              ("uspike",2,0);
              ("uspike",3,0);
              ("uspike",4,0);
              ("uspike",5,0);
              ("uspike",6,0);
              ("uspike",7,0);
              ("uspike",8,0);
              ("uspike",9,0);
              ("uspike",10,0);
              ("uspike",11,0);
              ("uspike",12,0);
              ("uspike",13,0);
              ("uspike",14,0);
              ("uspike",15,0);
              ("uspike",16,0);
              ("uspike",17,0);
              ("uspike",18,0);
              ("uspike",19,0)];
  start_pos = (0,7);
  exit = (19,6)
}

let level14 = {
  l = 14;
  obj_list = [("grass2",0,0);("grass2",19,0);
              ("cobble2",5,5); ("cobbl2",7,10);
              ("sand2",10,5); ("sand2",12,10);
              ("uspike",1,0);
              ("uspike",2,0);
              ("uspike",3,0);
              ("uspike",4,0);
              ("uspike",5,0);
              ("uspike",6,0);
              ("uspike",7,0);
              ("uspike",8,0);
              ("uspike",9,0);
              ("uspike",10,0);
              ("uspike",11,0);
              ("uspike",12,0);
              ("uspike",13,0);
              ("uspike",14,0);
              ("uspike",15,0);
              ("uspike",16,0);
              ("uspike",17,0);
              ("uspike",18,0);
              ("uspike",19,0)];
  start_pos = (0,1);
  exit = (19,1)
}

let level15 = {
  l = 15;
  obj_list = [];
  start_pos = (0,0);
  exit = (0,0)
}
