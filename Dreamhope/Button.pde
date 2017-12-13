class Button {
  int rectX, rectY;
  int rectWidth, rectHeight;
  String buttonTitle = "button";

  Button(int x, int y, int w, int h, String title) {
    rectX = x;
    rectY = y;
    rectWidth = w;
    rectHeight = h;
    buttonTitle = title;
  }

  void show() {
    rect(rectX, rectY, rectWidth, rectHeight);
  }

  boolean over() {
    if (mouseX > rectX && mouseY > rectY && mouseX < rectX+rectWidth && mouseY < rectY+rectHeight) {
      fill(0);
      return true;
    } else {
      fill(125);
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
    pushMatrix();
    translate(arrowX, arrowY);
    rotate(PI/2);
    popMatrix();
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