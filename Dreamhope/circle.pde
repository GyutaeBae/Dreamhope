class Circle {
  float xPos;
  float yPos;
  PImage circle;

  Circle(float _xPos, float _yPos) {
    xPos = _xPos;
    yPos = _yPos;
    circle = loadImage("circle.png");
  }

  void display() {
    image(circle, xPos-25, yPos-25, 70, 70);
  }
}