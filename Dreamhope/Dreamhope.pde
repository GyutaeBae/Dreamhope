import processing.video.*;
int stage = 0;
int score = 0;
Clue clue1_1, clue1_2;
Button button_1, button_2, button_3, button_4, button_5, button_6, button_7, button_8, button_9, button_10, button_11, button_12, button_13;
Pencil pencil;
Movie movie;
Next next;
int currentStage;
PImage img2, img3_2, img3_13, img3_17, img3_27, img4_4, img4_7, img4_13, img4_18, img4_24, img5_9, img5_15, img5_18, img5_26, img5_29;

void setup() {
  size (1600, 1000);
  next = new Next( 1500, 900, 100, 100);
  button_1 = new Button(loadImage("1-1.jpg"), loadImage("1-2.jpg"));
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
    break;

    // March_1
  case 1:
    background(img3_2);
    pencil.show();
    next.show();
    currentStage = stage;
    break;

    //March_2
  case 2:
    background(img3_13);
    pencil.show();
    next.show();
    currentStage = stage;
    break;

    //March_3
  case 3:
    background(img3_17);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //April_1
  case 4:
    background(img4_4);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //April_2
  case 5:
    background(img4_7);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //April_3
  case 6:
    background(img4_13);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //April_4
  case 7:
    background(img4_18);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //April_5
  case 8:
    background(img4_24);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //May_1
  case 9:
    background(img5_9);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //May_2
  case 10:
    background(img5_15);
    pencil.show();
    next.show();
    currentStage = stage;
    break;

    //May_3
  case 11:
    background(img5_18);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //May_4
  case 12:
    background(img5_26);
    pencil.show(); 
    next.show();
    currentStage = stage;
    break;

    //May_5
  case 13:
    background(img5_29);
    pencil.show(); 
    currentStage = stage;
    break;   


    //Teacher's Desk
  case 14:
    background(img2);
    button_"currentStage".show();
    pencil.show(); 
    next.show();
    break;

    //School Record_March
  case 15:
    pencil.show();
    next.show();
    break;

    //School_Record_April
  case 16:
    pencil.show(); 
    next.show();
    break;

    //School_Record_May
  case 17:
    pencil.show(); 
    next.show();
    break;

    //Happy Ending
  case 18:
    pencil.show(); 
    break;

    //Sad Ending
  case 19:
    pencil.show(); 
    break;
  }
}

void mousePressed() {
  if (button_1.over()) {
    if (stage == 14) {
      stage =  19;
    } else {
      stage = currentStage +1;
    }
  }

  if (next.over()) {
    stage = 15;
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
    stage = 15;
    break;

  case 'f':
    stage ++;
  }
}