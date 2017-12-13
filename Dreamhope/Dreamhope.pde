import processing.video.*;
int score = 0;
int stage = 0;
int clicked = 0;

Button[] button = new Button[15];

Clue clue1_1, clue1_2, clue1_3, clue1_4, clue2_1, clue2_2, clue3_1, clue3_2, clue3_3, clue4_1, clue4_2, clue4_3, clue5_1, clue5_2, clue6_1, clue6_2, clue6_3, clue6_4, clue6_5, 
  clue7_1, clue7_2, clue7_3, clue7_4, clue8_1, clue8_2, clue9_1, clue9_2, clue9_3, clue9_4, clue9_5, clue10_1, clue10_2, clue10_3, clue10_4, clue10_5, clue10_6, clue10_7, clue10_8, 
  clue11_1, clue11_2, clue11_3, clue11_4, clue11_5, clue11_6, clue12_1, clue12_2, clue12_3, clue12_4, clue12_5, clue13_1, clue13_2, clue13_3, clue13_4, clue14_1, clue14_2, clue14_3, clue14_4, clue14_5, clue14_6, clue14_7;
Pencil pencil;
Movie movie;
Next next;
Phone phone;
int currentStage;
PImage img2, img3_2, img3_13, img3_17, img3_27, img4_4, img4_7, img4_13, img4_18, img4_24, img5_9, img5_15, img5_18, img5_26, img5_29;
PImage noClick, circle, student1, student2;

void setup() {
  size (1600, 1000);
  next = new Next(1500, 900, 100, 100);
  phone = new Phone(1200, 270);
  button[1] = new Button(loadImage("1-1.JPG"), loadImage("1-2.JPG"));
  button[2] = new Button(loadImage("2-1.JPG"), loadImage("2-2.JPG"));
  button[3] = new Button(loadImage("3-1.JPG"), loadImage("3-2.JPG"));
  button[4] = new Button(loadImage("4-1.JPG"), loadImage("4-2.JPG"));
  button[5] = new Button(loadImage("5-1.JPG"), loadImage("5-2.JPG"));
  button[6] = new Button(loadImage("6-1.JPG"), loadImage("6-2.JPG"));
  button[7] = new Button(loadImage("7-1.JPG"), loadImage("7-2.JPG"));
  button[8] = new Button(loadImage("8-1.JPG"), loadImage("8-2.JPG"));
  button[9] = new Button(loadImage("9-1.JPG"), loadImage("9-2.JPG"));
  button[10] = new Button(loadImage("10-1.JPG"), loadImage("10-2.JPG"));
  button[11] = new Button(loadImage("11-1.JPG"), loadImage("11-2.JPG"));
  button[12] = new Button(loadImage("12-1.JPG"), loadImage("12-2.JPG"));
  button[13] = new Button(loadImage("13-1.JPG"), loadImage("13-2.JPG"));
  button[14] = new Button(loadImage("14-1.JPG"), loadImage("14-2.JPG"));
  pencil = new Pencil();
  movie = new Movie(this, "bgm.mp4");
  movie.loop();
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
  noClick = loadImage("noclick.JPG");
  circle = loadImage("circle.png");
  student1 = loadImage("student1.jpg");
  student2 = loadImage("student2.jpg");

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
  switch (stage) {
    // Opening
  case 0:
    if (movie.available() ) {
      movie.read();
    }
    image(movie, 0, 0, width, height);
    pencil.show();
    next.show();
    currentStage = 0;
    break;

    // March_1
  case 1:
    background(img3_2);
    pencil.show();
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    next.show();
    clue1_1.show(); 
    clue1_2.show();
    clue1_3.show(); 
    clue1_4.show();
    currentStage = 1;

    break;

    //March_2
  case 2:
    background(img3_13);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show();
    next.show();
    clue2_1.show(); 
    clue2_2.show();
    currentStage = 2;

    break;

    //March_3
  case 3:
    background(img3_17);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();

    clue3_1.show(); 
    clue3_2.show(); 
    clue3_3.show();
    currentStage = 3;

    break;

    //April_1
  case 4:
    background(img3_27);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();
    clue4_1.show(); 
    clue4_2.show(); 
    clue4_3.show();
    currentStage = 4;
    break;

  case 5:
    background(img4_4);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();
    clue5_1.show(); 
    clue5_2.show();
    currentStage = 5;
    break;

    //April_2
  case 6:
    background(img4_7);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();

    clue6_1.show(); 
    clue6_2.show(); 
    clue6_3.show(); 
    clue6_4.show(); 
    clue6_5.show();

    currentStage = 6;

    break;

    //April_3
  case 7:
    background(img4_13);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();

    clue7_1.show(); 
    clue7_2.show(); 
    clue7_3.show(); 
    clue7_4.show();

    currentStage = 7;

    break;

    //April_4
  case 8:
    background(img4_18);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();

    clue8_1.show(); 
    clue8_2.show();

    currentStage = 8;

    break;

    //April_5
  case 9:
    background(img4_24);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();

    clue9_1.show(); 
    clue9_2.show(); 
    clue9_3.show(); 
    clue9_4.show(); 
    clue9_5.show();

    currentStage = 9;

    break;

    //May_1
  case 10:
    background(img5_9);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
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

    currentStage = 10;

    break;

    //May_2
  case 11:
    background(img5_15);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show();
    next.show();

    clue11_1.show(); 
    clue11_2.show(); 
    clue11_3.show(); 
    clue11_4.show(); 
    clue11_5.show(); 
    clue11_6.show();

    currentStage = 11;

    break;

    //May_3
  case 12:
    background(img5_18);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();
    clue12_1.show(); 
    clue12_2.show(); 
    clue12_3.show(); 
    clue12_4.show(); 
    clue12_5.show();

    currentStage = 12;

    break;

    //May_4
  case 13:
    background(img5_26);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 
    next.show();
    clue13_1.show(); 
    clue13_2.show(); 
    clue13_3.show(); 
    clue13_4.show();
    currentStage = 13;

    break;

    //May_5
  case 14:
    background(img5_29);
    if (clicked >11) {
      image(noClick, 500, 300, 600, 200);
    }
    pencil.show(); 

    next.show();
    clue14_1.show(); 
    clue14_2.show(); 
    clue14_3.show(); 
    clue14_4.show(); 
    clue14_5.show(); 
    clue14_6.show(); 
    clue14_7.show();
    currentStage = 14;
    break;   


    //Teacher's Desk

  case 15:
    background(img2);
    clicked = 0;
    if (currentStage >0) {
      button[currentStage].show();
    }
    if (currentStage > 4) {
      phone.call();
    } else {
      phone.show();
    }
    pencil.show(); 
    break;

    //School Record_March
  case 16:
    background(255);
    image(student1, 400, 0, 800, 1000);
    pencil.show(); 
    next.show();
    break;

    //School_Record_April
  case 17:
    background(255);
    image(student2, 400, 0, 800, 1000);
    pencil.show(); 
    next.show();
    break;

    //School_Record_May
  case 18:
    pencil.show(); 
    next.show();
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
  println(score);

  clicked ++;

  image(circle, mouseX, mouseY, 50, 50);

  if (button[13].over() && stage == 15) {
    if (stage == 14) {
      stage =  19;
    } else if (button[4].over() && currentStage == 5 ) {
      stage = 16;
    } else if (button[8].over() && currentStage == 9) {
      stage = 17;
    }
    
    else {
      stage = currentStage +1;
    }
  }
  if (next.over() && stage != 0) {
    stage = 15;
  } else if (next.over() && stage == 0) {
    stage = 1;
  } else if (next.over() && stage != 0 && stage == 16) {
    stage = 5;
  } else if (next.over() && stage != 0 && stage == 17) {
    stage = 10;
  } 


  if (stage==1) {
    if ((clue1_1.over()||clue1_2.over())&&clue1_1.clicked==false&&clue1_2.clicked==false) {
      score+=1;
      clue1_1.clicked=true; 
      clue1_2.clicked=true;
    }
    if ((clue1_3.over()||clue1_4.over())&&clue1_3.clicked==false&&clue1_4.clicked==false) {
      score+=2;
      clue1_3.clicked=true; 
      clue1_4.clicked=true;
    }
  }
  if (stage==2) {
    if ((clue2_1.over()||clue2_2.over())&&clue2_1.clicked==false&&clue2_2.clicked==false) {
      score+=2;
      clue2_1.clicked=true; 
      clue2_2.clicked = true;
    }
  }
  if (stage==3) {
    if ((clue3_1.over()||clue3_2.over())&&clue3_1.clicked==false&&clue3_2.clicked==false) {
      score +=2;
      clue3_1.clicked=true; 
      clue3_2.clicked=true;
    }
    if (clue3_3.over()&&clue3_3.clicked==false) {
      score+=2; 
      clue3_3.clicked=true;
    }
  }
  if (stage==4) {
    if ((clue4_1.over()||clue4_2.over())&&clue4_1.clicked==false&&clue4_2.clicked==false) {
      score += 2;
      clue4_1.clicked=true; 
      clue4_2.clicked=true;
    }
    if (clue4_3.over()&&clue4_3.clicked==false) {
      score +=3; 
      clue4_3.clicked=true;
    }
  }
  if (stage==5) {
    if ((clue5_1.over()||clue5_2.over())&&clue5_1.clicked==false&&clue5_2.clicked==false) {
      score+=2;
      clue5_1.clicked = true; 
      clue5_2.clicked = true;
    }
  }
  if (stage==6) {
    if (clue6_1.over()&&clue6_1.clicked==false) {
      score+=3; 
      clue6_1.clicked=true;
    }
    if ((clue6_2.over()||clue6_3.over())&&clue6_2.clicked==false&&clue6_3.clicked==false) {
      score +=3;
      clue6_2.clicked=true; 
      clue6_3.clicked=true;
    }
    if (clue6_4.over()&&clue6_4.clicked==false) {
      score+=2; 
      clue6_4.clicked=true;
    }
    if (clue6_5.over()&&clue6_5.clicked==false) {
      score+=4; 
      clue6_5.clicked=true;
    }
  }
  if (stage==7) {
    if ((clue7_1.over()||clue7_2.over())&&clue7_1.clicked==false&&clue7_2.clicked==false) {
      score+=2;
      clue7_1.clicked=true; 
      clue7_2.clicked=true;
    }
    if (clue7_3.over()&&clue7_3.clicked==false) {
      score+=1;
      clue7_3.clicked=true;
    }
    if (clue7_4.over()&&clue7_4.clicked==false) {
      score+=3; 
      clue7_4.clicked=true;
    }
  }
  if (stage==8) {
    if (clue8_1.over()&&clue8_1.clicked==false) {
      score+=1; 
      clue8_1.clicked=true;
    }
    if (clue8_2.over()&&clue8_2.clicked==false) {
      score+=3;
      clue8_2.clicked=true;
    }
  }
  if (stage==9) {
    if ((clue9_1.over()||clue9_2.over())&&clue9_1.clicked==false&&clue9_2.clicked==false) {
      score+=2;
      clue9_1.clicked=true; 
      clue9_2.clicked=true;
    }
    if ((clue9_3.over()||clue9_4.over()||clue9_5.over())&&clue9_3.clicked==false&&clue9_4.clicked==false&&clue9_5.clicked==false) {
      score+=4;
      clue9_3.clicked=true; 
      clue9_4.clicked=true; 
      clue9_5.clicked=true;
    }
  }
  if (stage==10) {
    if ((clue10_1.over()||clue10_2.over()||clue10_3.over()||clue10_4.over())&&clue10_1.clicked==false&&clue10_2.clicked==false&&clue10_3.clicked==false&&clue10_4.clicked==false) {
      score +=2;
      clue10_1.clicked=true; 
      clue10_2.clicked=true; 
      clue10_3.clicked=true; 
      clue10_4.clicked=true;
    }
    if ((clue10_5.over()||clue10_6.over()||clue10_7.over())&&clue10_5.clicked==false&&clue10_6.clicked==false&& clue10_7.clicked==false) {
      score+=1;
      clue10_5.clicked=true; 
      clue10_6.clicked=true; 
      clue10_7.clicked=true;
    }
    if (clue10_8.over()&&clue10_8.clicked==false) {
      score +=1;
      clue10_8.clicked=true;
    }
  }
  if (stage==11) {
    if ((clue11_1.over()||clue11_2.over())&&clue11_1.clicked==false&&clue11_2.clicked==false) {
      score+=1;
      clue11_1.clicked=true; 
      clue11_2.clicked=true;
    }
    if ((clue11_3.over()||clue11_4.over())&&clue11_3.clicked==false&&clue11_4.clicked==false) {
      score+=1;
      clue11_3.clicked=true; 
      clue11_4.clicked=true;
    }
    if ((clue11_5.over()||clue11_6.over())&&clue11_5.clicked==false&&clue11_6.clicked==false) {
      score+=2;
      clue11_5.clicked=true; 
      clue11_6.clicked=true;
    }
  }
  if (stage==12) {
    if (clue12_1.over()&&clue12_1.clicked==false) {
      score+=4;
      clue12_1.clicked=true;
    }
    if (clue12_2.over()&&clue12_2.clicked==false) {
      score+=2; 
      clue12_2.clicked=true;
    }
    if ((clue12_3.over()||clue12_4.over())&&clue12_3.clicked==false&&clue12_4.clicked==false) {
      score+=2;
      clue12_3.clicked=true; 
      clue12_4.clicked=true;
    }
    if (clue12_5.over()&&clue12_5.clicked==false) {
      score+=1;
      clue12_5.clicked=true;
    }
  }
  if (stage==13) {
    if ((clue13_1.over()||clue13_2.over())&&clue13_1.clicked==false&&clue13_2.clicked==false) {
      score+=2;
      clue13_1.clicked=true; 
      clue13_2.clicked=true;
    }
    if ((clue13_3.over()||clue13_4.over())&&clue13_3.clicked==false&&clue13_4.clicked==false) {
      score+=2;
      clue13_3.clicked=true; 
      clue13_4.clicked=true;
    }
  }
  if (stage==14) {
    if ((clue14_1.over()||clue14_2.over())&&clue14_1.clicked==false&&clue14_2.clicked==false) {
      score+=1;
      clue14_1.clicked=true; 
      clue14_2.clicked=true;
    }
    if ((clue14_3.over()||clue14_4.over())&&clue14_3.clicked==false&&clue14_4.clicked==false) {
      score+=2;
      clue14_3.clicked=true; 
      clue14_4.clicked=true;
    }
    if (clue14_5.over()&&clue14_5.clicked==false) {
      score+=1;
      clue14_5.clicked=true;
    }
    if ((clue14_6.over()&&clue14_7.over())&&clue14_6.clicked==false&&clue14_7.clicked==false) {
      score+=1;
      clue14_6.clicked=true;
      clue14_7.clicked=true;
    }
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
    stage = 16;
    break;

  case 'f':
    stage ++;
  }
}