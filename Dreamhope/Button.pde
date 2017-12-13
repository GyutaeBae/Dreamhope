class Button {
  PImage button1;
  PImage button2;

  Button(PImage title1, PImage title2) {
    button1 = title1;
    button2 =  title2;
  }

  void show() {
    fill(240);

    if (mouseX > 550 && mouseY > 475 && mouseX < 1050 && mouseY < 600) {
      stroke(0);
      image(button1,550, 475, 500, 125);
      noStroke();
      image(button2,550, 605, 500, 125);
    } else if (mouseX > 550 && mouseY > 605 && mouseX < 1050 && mouseY < 730) {
      noStroke();
      image(button1,550, 475, 500, 125);
      stroke(0);
      image(button2,550, 605, 500, 125);
    } else {
      noStroke();
      image(button1,550, 475, 500, 125);
      image(button2,550, 605, 500, 125);
    }
  }

  boolean over() {
    if (mouseX > 550 && mouseY > 475 && mouseX < 1050 && mouseY < 600) {
      fill(0);
      return true;
    } else if (mouseX > 550 && mouseY > 600 && mouseX < 1050 && mouseY < 725) {
      fill(125);
      return true;
    } else {
      return false;
    }
  }
}



class Next {

  PImage arrow;
  int arrowX, arrowY;
  int arrowWidth, arrowHeight;

  Next(int x, int y, int w, int h) {
    arrowX = x;
    arrowY = y;
    arrowWidth = w;
    arrowHeight = h;
  }

  void show() {
    arrow =  loadImage("arrow.png");
    image(arrow, arrowX, arrowY, arrowWidth, arrowHeight);
  }

  boolean over() {
    if (mouseX > 1550 && mouseY > 950 && mouseX < 1600 && mouseY < 1000) {
      return true;
    } else {
      return false;
    }
  }
}