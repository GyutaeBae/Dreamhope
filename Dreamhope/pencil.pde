class Pencil {

  PImage pen;

  void show() {
    pen = loadImage("pen.png");
    noCursor();
    fill(255, 15, 15);
    stroke(255, 15, 15);
    image(pen, mouseX, mouseY, 100, 70);
  }
}