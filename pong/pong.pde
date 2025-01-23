// credit to coding train YT channel
// https://youtu.be/IIrC5Qcb2G4?feature=shared
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
boolean playerLeftUp, playerLeftDown, playerRightUp, playerRightDown;

void setup() {
  size(1000, 600);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
  Arcade = createFont("ARCADECLASSIC.TTF", 50); // the size needs to be noticable
  //frameRate(30);
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
  text(leftScore, 96, 50);
  text(rightScore, width - 128, 50);
  
  leftPlayer();
  //if (playerTwoUp) {
    //right.move(-10);
  //} else if (playerTwoUp == false) {
    //right.move(0);
  //} if (playerTwoDown) {
    //right.move(10);
  //} else if (playerTwoDown == false) {
    //left.move(0);
  //}
}

void keyReleased() {
  
    switch(key) {
   case 'A':
   case 'a':
     playerLeftUp = false;
     break;
   case 'Z':
   case 'z':
     playerLeftDown = false;
     break;
   case 'K':
   case 'k':
     playerRightUp = false;
     break;
   case 'M':
   case 'm':
     playerRightDown = false;
     break;
  }
  
  //if (playerOneUp == false) {
    //left.move(0);
  //}
  //if (playerOneDown == false) {
    //left.move(0);
  //}
  //if (playerTwoUp == false) {
    //right.move(0);
  //}
  //if (playerTwoDown == false) {
    //right.move(0);
  //}
}

void keyPressed() {
  
  switch(key) {
   case 'A':
   case 'a':
     playerLeftUp = true;
     playerLeftDown = false;
     break;
   case 'Z':
   case 'z':
     playerLeftDown = true;
     playerLeftUp = false;
     break;
   case 'K':
   case 'k':
     playerRightUp = true;
     break;
   case 'M':
   case 'm':
     playerRightDown = true;
     break;
  }
  
  //if (playerOneUp == true) {
    //left.move(-10);
  //}
  //if (playerOneDown == true) {
    //left.move(10);
  //}
  //if (playerTwoUp == true) {
    //right.move(-10);
  //}
  //if (playerTwoDown == true) {
    //right.move(10);
  //}
}

void leftPlayer() {
  keyReleased();
  keyPressed();
  
  if (playerLeftUp) {
    left.move(-10);
  }
  else if (playerLeftUp == false) {
    left.move(0);
  }
  if (playerLeftDown) {
    left.move(10);
  }
  else if (playerLeftDown == false) {
    left.move(0);
  }
  
}
