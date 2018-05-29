class Ball {
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = .25;
  final float MAX_RADIUS = 50;
  color col;
  float rad;
  float speed1 = random(10);
  float speed2 = random(10);
  float x;
  float y;
  int state;
  Ball(float newX, float newY, float newRad, color newCol, int newState) {
    x = newX;
    y = newY;
    rad = newRad;
    col = newCol;
    state = newState;
  }
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getRad() {
    return rad;
  }
  int getState() {
    return state;
  }
  void setState(int newState) {
    state = newState;
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
    if (state == 1 && rad < MAX_RADIUS) {
      rad += CHANGE_FACTOR;
    }
    if (rad >= MAX_RADIUS) {
      state = 2;
    }
    if (state == 2) {
      rad -= CHANGE_FACTOR;
    }
    if (rad <= 0) {
      state = 3;
    }
    if (state == 0) {
      x += speed1;
      y += speed2;
    }
    ellipse(x, y, rad, rad);
  }
}