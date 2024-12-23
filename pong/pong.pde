// start of the program

Puck puck;
Paddle left;
Paddle right;

void setup() {
  size(1000, 600);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
}

void draw() {
  background(50, 200, 75);

  left.show();
  right.show();
  left.update();
  right.update();
  puck.update();
  puck.edges();
  puck.show();
}

void keyReleased() {
  left.move(0);
  right.move(0);
}

void keyPressed() {

  if (key == 'a') {
    left.move(-10);
  } else if (key == 'z') {
    left.move(10);
  }

  if (key == 'k') {
    right.move(-10);
  } else if (key == 'm') {
    right.move(10);
  }
}
