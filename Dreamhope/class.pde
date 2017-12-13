class Clue {
  int rectX1, rectY1;
  int rectX2, rectY2;
  int score;
  boolean clicked;

  Clue(int x1, int x2, int y1, int y2) {
    rectX1 = x1;
    rectY1 = y1;
    rectX2 = x2;
    rectY2 = y2;
    clicked = false;
  }

  void show() {
    noStroke();
    fill(255, 255, 255, 150);
    rect(rectX1, rectY1, rectX2-rectX1, rectY2-rectY1);
  }

  boolean over() {
    if (mouseX > rectX1 && mouseY > rectY1 && mouseX < rectX2 && mouseY < rectY2) {
      return true;
    } else {
      return false;
    }
  }
}