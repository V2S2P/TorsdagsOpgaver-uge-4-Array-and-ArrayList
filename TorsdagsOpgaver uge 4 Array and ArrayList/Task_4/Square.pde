class Square {
  float xposition;
  float yposition;
  color c;
  
  Square(float xposition, float yposition, color c) {
    this.xposition = xposition;
    this.yposition = yposition;
    this.c = c;
  }

  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xposition, yposition, 50, 50);
  }
}
