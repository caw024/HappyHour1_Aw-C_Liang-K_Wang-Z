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
    boy[i] = new Ball(random(600), random(600), 5, (int)random(255), 0);
  }
}

void draw() {
  background(100);
  for (int i = 0; i < boy.length - 1; i++) {
    for (int j = i + 1; j < boy.length; j++) {
      if (boy[i].getState() != 3 && boy[j].getState() != 3 && pow(boy[i].getX() - boy[j].getX(), 2) + pow(boy[i].getY() - boy[j].getY(), 2) <= pow(boy[i].getRad() + boy[j].getRad(), 2)) {
        if (boy[i].getState() != 2) {
          boy[i].setState(1);
        }
        if (boy[j].getState() != 2) {
          boy[j].setState(1);
        }
      }
    }
    boy[i].update();
  }
}
void mouseClicked() {
  Ball[] temp = new Ball[boy.length + 1];
  Ball b1 = new Ball(mouseX, mouseY, 5, (int)random(255), 1);
  temp[0] = b1;
  for (int i = 0; i < boy.length; i++) {
    temp[i + 1] = boy[i];
  }
  boy = temp;
}
