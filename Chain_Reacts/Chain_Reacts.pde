/*
Team HappyHour
APCS2 pd01
HW 53 -- All That Bouncin'
2018 - 05 - 23
*/

int count = (int)(random(10)) + 25;
Ball[] boy = new Ball[count];
void setup() {
  size(600, 600);
  frameRate(30);
  for (int i = 0; i < boy.length; i++) {
    boy[i] = new Ball(random(600), random(600), (int)random(255));
  }
}

void draw() {
  background(100);
  for (Ball b: boy) {
    b.update();
  }
}
