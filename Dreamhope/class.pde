class Clue {
  int rectX, rectY;
  int rectWidth, rectHeight;
  int score;
  
  Clue(int x, int y, int w, int h, int s) {
    rectX = x;
    rectY = y;
    rectWidth = w;
    rectHeight = h;
    score = s;
  }

  void show() {
    noStroke();
    noFill();
    rect(rectX, rectY, rectWidth, rectHeight);    
  }
  
  boolean over() {
    if (mouseX > rectX && mouseY > rectY && mouseX < rectX+rectWidth && mouseY < rectY+rectHeight) {
      return true;
    } else {
      return false;
    }
  }
  
}