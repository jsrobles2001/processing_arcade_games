// VARIABLES
boolean upOne, downOne, nullOne, upTwo, downTwo, nullTwo;

// paddle object
class Paddle {
  // paddle properties
  float x;
  float y = height / 2;
  float w = 25;
  float h = 150;
  float velocityOne;
  float velocityTwo;
  float changeVelocity;
  float maxVelocity = 3;

  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w + w; // the x position is doubled t
    } else {
      x = width - w - w; // the position mirrors the left
    }
  }

  void update() {

    if (upOne == true && upOne != false) {
      velocityOne -= changeVelocity;
      if (velocityOne < -maxVelocity) {
        velocityOne = -maxVelocity;
      }
    } else if (downOne == true && upOne != false) {
      velocityOne += changeVelocity;
      if (velocityOne > maxVelocity) {
        velocityOne = maxVelocity;
      }
    } else {
      if (velocityOne < changeVelocity) {
        velocityOne = 0;
      } else if (velocityOne < 0) {
        velocityOne += changeVelocity;
      } else if (velocityOne > 0) {
        velocityOne -= changeVelocity;
      }
    }



    velocityOne += changeVelocity;
    y += velocityOne;
    if (y < 0 + 75) {
      y = 0 + 75;
    }
    if (y > height - 75) {
      y = height - 75;
    }
    keyPressed();
    keyReleased();
  }

  void keyReleased() {

    switch(key) {
    case 'A':
    case 'a':
      upOne = false;
      break;
    case 'Z':
    case 'z':
      downOne = false;
      break;
    case 'K':
    case 'k':
      upTwo = false;
      break;
    case 'M':
    case 'm':
      downTwo = false;
      break;
    }
  }

  void keyPressed() {

    switch(key) {
    case 'A':
    case 'a':
      upOne = true;
      break;
    case 'Z':
    case 'z':
      downOne = true;
      break;
    case 'K':
    case 'k':
      upTwo = true;
      break;
    case 'M':
    case 'm':
      downTwo = true;
      break;
    }
  }

  // drawing paddles
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
