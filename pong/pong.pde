// credit to coding train YT channel
/*

-- GLITCHES --
- if both paddles move at the same time and one stops, both stop for some reason
- the puck goes through the paddle and bounces like crazy

*/
// start of the program

Puck puck;
Paddle left;
Paddle right;

PFont Arcade; // 8-bit font

int leftScore = 0;
int rightScore = 0;

void setup() {
  size(1000, 600);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
  Arcade = createFont("ARCADECLASSIC.TTF", 50); // the size needs to be noticable
}

void draw() {
  background(50, 200, 75);
  // puck/paddle collision
  puck.checkPaddleLeft(left);
  puck.checkPaddleRight(right);
  // drawing the paddles and puck
  left.show();
  right.show();
  left.update();
  right.update();
  puck.update();
  puck.edges();
  puck.show();
  // drawing the score
  fill(255);
  textFont(Arcade);
  text(leftScore, 32, 50);
  text(rightScore, width - 64, 50);
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
