class Ball {
  int col;
  float speed1 = random(10);
  float speed2 = random(10);
  float x;
  float y;
  
  Ball(float newX, float newY, int newCol) {
    x = newX;
    y = newY;
    col = newCol;
  }
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  int getCol() {
    return col;
  }
  void setX(float newX) {
    x = newX;
  }
  void setY(float newY) {
    y = newY;
  }
  void update() {
    fill(col);
    if (x < 0 || x > 600) {
      if (x < 0)
        x = 0;
      if (x > 600)
        x = 600;
      speed1 *= -1;
    }
    if (y < 0 || y > 600) {
      if (y < 0)
        y = 0;
      if (y > 600)
        y = 600;
      speed2 *= -1;
    }
    x += speed1;
    y += speed2;
    ellipse(x,y,10,10);
  }
}
