// credit to coding train YT channel
// https://youtu.be/IIrC5Qcb2G4?feature=shared
// The base of some of this code is from here

/*
~~TO-DO LIST~~
 * Add states for title and results
 * Add paddles
 */

// VARIABLES
Puck puck;
Paddle left;
Paddle right;

PFont Arcade; // 8-bit font

String currentState = "";
String[] states = {"title", "gameloop", "results"};

int leftScore = 0;
int rightScore = 0;


// SETUP
void setup() {
  size(1200, 600);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
  Arcade = createFont("ARCADECLASSIC.TTF", 50); // the size needs to be noticable
}

// RENDERING
void draw() {
  background(50, 200, 100);
  puck.show();
  puck.update();
  puck.edges();
  left.show();
  right.show();
  left.update();
  right.update();
  textFont(Arcade);
  text(leftScore, width / 2 - 432, 50);
  text(rightScore, width - 192, 50);
}

void keyReleased() {

  switch(key) {
  case 'A':
  case 'a':
    left.goingUp = false;
    break;
  case 'Z':
  case 'z':
    left.goingDown = false;
    break;
  case 'K':
  case 'k':
    right.goingUp = false;
    break;
  case 'M':
  case 'm':
    right.goingDown = false;
    break;
  }
}

void keyPressed() {

  switch(key) {
  case 'A':
  case 'a':
    left.goingUp = true;
    break;
  case 'Z':
  case 'z':
    left.goingDown = true;
    break;
  case 'K':
  case 'k':
    right.goingUp = true;
    break;
  case 'M':
  case 'm':
    right.goingDown = true;
    break;
  }
}
