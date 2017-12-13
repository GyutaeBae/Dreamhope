//import processing.video.*;
int stage = 0;
int score = 0;
Clue clue1_1, clue1_2, clue1_3, clue1_4, clue2_1, clue2_2, clue3_1, clue3_2, clue3_3, clue4_1, clue4_2, clue4_3, clue5_1, clue5_2, clue6_1, clue6_2, clue6_3, clue6_4, clue6_5, 
  clue7_1, clue7_2, clue7_3, clue7_4, clue8_1, clue8_2, clue9_1, clue9_2, clue9_3, clue9_4, clue9_5, clue10_1, clue10_2, clue10_3, clue10_4, clue10_5, clue10_6, clue10_7, clue10_8, 
  clue11_1, clue11_2, clue11_3, clue11_4, clue11_5, clue11_6, clue12_1, clue12_2, clue12_3, clue12_4, clue12_5, clue13_1, clue13_2, clue13_3, clue13_4, clue14_1, clue14_2, clue14_3, clue14_4, clue14_5, clue14_6, clue14_7;

Button button_next;
Pencil pencil;
//Movie movie;
Next next;
PImage img2, img3_2, img3_13, img3_17, img3_27, img4_4, img4_7, img4_13, img4_18, img4_24, img5_9, img5_15, img5_18, img5_26, img5_29;

void setup() {
  size (1600, 1000);
  next = new Next( 1500, 900, 100, 100);
  button_next = new Button(550, 850, 50, 30, "다음");
  pencil = new Pencil();
  /*  movie = new Movie(this, "bgm.mp4");
   movie.loop();*/
  img3_2 = loadImage("3_2.jpg");
  img2 = loadImage("desk.jpg");
  img3_13 = loadImage("3_13.jpg");
  img3_17 = loadImage("3_17.jpg");
  img3_27 = loadImage("3_27.jpg");
  img4_4 = loadImage("4_4.jpg");
  img4_7 = loadImage("4_7.jpg");
  img4_13 = loadImage("4_13.jpg");
  img4_18 = loadImage("4_18.jpg");
  img4_24 = loadImage("4_24.jpg");
  img5_9 = loadImage("5_9.jpg");
  img5_15 = loadImage("5_15.jpg");
  img5_18 = loadImage("5_18.jpg");
  img5_26 = loadImage("5_26.jpg");
  img5_29 = loadImage("5_29.jpg");

  clue1_1 = new Clue(608, 771, 775, 830);
  clue1_2 = new Clue(227, 720, 830, 887);
  clue1_3 = new Clue(1065, 1393, 252, 310);
  clue1_4 = new Clue(850, 1230, 310, 367);
  clue2_1 = new Clue(850, 1392, 80, 135);
  clue2_2 = new Clue(850, 1283, 137, 194);
  clue3_1 = new Clue(1230, 1392, 80, 137);
  clue3_2 = new Clue(850, 1010, 137, 195);
  clue3_3 = new Clue(477, 681, 411, 633);
  clue4_1 = new Clue(1066, 1393, 138, 195);
  clue4_2 = new Clue(850, 1338, 195, 309);
  clue4_3 = new Clue(577, 633, 516, 562);
  clue5_1 = new Clue(1010, 1339, 310, 367);
  clue5_2 = new Clue(850, 1012, 367, 425);
  clue6_1 = new Clue(725, 779, 500, 582);
  clue6_2 = new Clue(233, 306, 537, 614);
  clue6_3 = new Clue(427, 480, 542, 592);
  clue6_4 = new Clue(852, 1011, 426, 481);
  clue6_5 = new Clue(498, 771, 135, 213);
  clue7_1 = new Clue(1066, 1392, 196, 253);
  clue7_2 = new Clue(851, 1065, 251, 311);
  clue7_3 = new Clue(852, 1393, 367, 424);
  clue7_4 = new Clue(537, 585, 368, 415);
  clue8_1 = new Clue(1151, 1317, 481, 629);
  clue8_2 = new Clue(314, 531, 366, 657);
  clue9_1 = new Clue(1175, 1392, 368, 425);
  clue9_2 = new Clue(853, 1229, 425, 481);
  clue9_3 = new Clue(336, 769, 830, 885);
  clue9_4 = new Clue(847, 1391, 78, 139);
  clue9_5 = new Clue(850, 1229, 137, 195);
  clue10_1 = new Clue(228, 359, 605, 658);
  clue10_2 = new Clue(1022, 1107, 131, 203);
  clue10_3 = new Clue(1180, 1275, 431, 547);
  clue10_4 = new Clue(885, 938, 712, 776);
  clue10_5 = new Clue(282, 771, 661, 716);
  clue10_6 = new Clue(228, 771, 716, 775);
  clue10_7 = new Clue(228, 335, 775, 831);
  clue10_8 = new Clue(227, 771, 213, 659);
  clue11_1 = new Clue(1119, 1393, 137, 196);
  clue11_2 = new Clue(851, 1338, 195, 252);
  clue11_3 = new Clue(1011, 1393, 253, 311);
  clue11_4 = new Clue(852, 1338, 311, 368);
  clue11_5 = new Clue(852, 1392, 367, 482);
  clue11_6 = new Clue(851, 1011, 484, 541);
  clue12_1 = new Clue(499, 771, 135, 213);
  clue12_2 = new Clue(905, 1175, 81, 137);
  clue12_3 = new Clue(958, 1393, 195, 253);
  clue12_4 = new Clue(852, 1174, 254, 311);
  clue12_5 = new Clue(958, 1011, 308, 366);
  clue13_1 = new Clue(1175, 1393, 138, 195);
  clue13_2 = new Clue(851, 1393, 194, 252);
  clue13_3 = new Clue(852, 1393, 253, 311);
  clue13_4 = new Clue(851, 1175, 310, 366);
  clue14_1 = new Clue(445, 771, 774, 830);
  clue14_2 = new Clue(227, 281, 833, 888);
  clue14_3 = new Clue(852, 958, 137, 195);
  clue14_4 = new Clue(1283, 1393, 253, 311);
  clue14_5 = new Clue(852, 1393, 367, 424);
  clue14_6 = new Clue(1174, 1338, 541, 598);
  clue14_7 = new Clue(852, 1012, 597, 655);
}

void draw() {
  println(mouseX, mouseY);
  switch (stage) {
    // Opening
  case 0:
    /*    if (movie.available() ) {
     movie.read();
     }
     image(movie, 0, 0, width, height);*/
    pencil.show();
    next.show();
    button_next.show();
    break;

    // March_1
  case 1:
    background(img3_2);
    pencil.show();
    next.show();
    button_next.show();
    clue1_1.show(); 
    clue1_2.show(); 
    }
    
    clue1_3.show(); 
    clue1_4.show();
    break;

    //March_2
  case 2:
    background(img3_13);
    pencil.show();
    next.show();
    clue2_1.show(); 
    clue2_2.show();
    break;

    //March_3
  case 3:
    background(img3_17);
    pencil.show(); 
    next.show();
    clue3_1.show(); 
    clue3_2.show(); 
    clue3_3.show();
    break;

    //April_1
  case 4:
    background(img3_27);
    pencil.show(); 
    next.show();
    clue4_1.show(); 
    clue4_2.show(); 
    clue4_3.show();
    break;

  case 5:
    background(img4_4);
    pencil.show(); 
    next.show();
    clue5_1.show(); 
    clue5_2.show();

    //April_2
  case 6:
    background(img4_7);
    pencil.show(); 
    next.show();
    clue6_1.show(); 
    clue6_2.show(); 
    clue6_3.show(); 
    clue6_4.show(); 
    clue6_5.show();
    break;

    //April_3
  case 7:
    background(img4_13);
    pencil.show(); 
    next.show();
    clue7_1.show(); 
    clue7_2.show(); 
    clue7_3.show(); 
    clue7_4.show();
    break;

    //April_4
  case 8:
    background(img4_18);
    pencil.show(); 
    next.show();
    clue8_1.show(); 
    clue8_2.show();
    break;

    //April_5
  case 9:
    background(img4_24);
    pencil.show(); 
    next.show();
    clue9_1.show(); 
    clue9_2.show(); 
    clue9_3.show(); 
    clue9_4.show(); 
    clue9_5.show();
    break;

    //May_1
  case 10:
    background(img5_9);
    pencil.show(); 
    next.show();
    clue10_1.show(); 
    clue10_2.show(); 
    clue10_3.show(); 
    clue10_4.show(); 
    clue10_5.show(); 
    clue10_6.show(); 
    clue10_7.show(); 
    clue10_8.show();
    break;

    //May_2
  case 11:
    background(img5_15);
    pencil.show();
    next.show();
    clue11_1.show(); 
    clue11_2.show(); 
    clue11_3.show(); 
    clue11_4.show(); 
    clue11_5.show(); 
    clue11_6.show();
    break;

    //May_3
  case 12:
    background(img5_18);
    pencil.show(); 
    next.show();
    clue12_1.show(); 
    clue12_2.show(); 
    clue12_3.show(); 
    clue12_4.show(); 
    clue12_5.show();
    break;

    //May_4
  case 13:
    background(img5_26);
    pencil.show(); 
    next.show();
    clue13_1.show(); 
    clue13_2.show(); 
    clue13_3.show(); 
    clue13_4.show();
    break;

    //May_5
  case 14:
    background(img5_29);
    pencil.show(); 
    next.show();
    clue14_1.show(); 
    clue14_2.show(); 
    clue14_3.show(); 
    clue14_4.show(); 
    clue14_5.show(); 
    clue14_6.show(); 
    clue14_7.show();
    break;   


    //Teacher's Desk
  case 15:
    background(img2);
    pencil.show(); 


    break;

    //School Record_March
  case 16:
    pencil.show(); 
    break;

    //School_Record_April
  case 17:
    pencil.show(); 
    break;

    //School_Record_May
  case 18:
    pencil.show(); 
    break;

    //Happy Ending
  case 19:
    pencil.show(); 
    break;

    //Sad Ending
  case 20:
    pencil.show(); 
    break;
  }
}

void mousePressed() {
  if (button_next.over()) {
    score += 1;
    stage = 13;
  }
}

void keyPressed() {
  switch(key) {
  case 'a':
    stage = 1;
    break;

  case 's':
    stage = 0;
    break;

  case 'd':
    stage = 14;
    break;

  case 'f':
    stage ++;
  }
}