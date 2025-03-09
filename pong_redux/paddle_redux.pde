// paddle object
class Paddle {
  // paddle properties
  float x;
  float y = height / 2;
  float w = 25;
  float h = 150;
  float velocityOne;
  float velocityTwo;
  float changeVelocity = 0.25;
  float maxVelocity = 4;
  boolean upOne, downOne, upTwo, downTwo;


  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w + w; // the x position is doubled t
    } else {
      x = width - w - w; // the position mirrors the left
    }
  }

  void inputs (boolean upOne) {

    if (upOne) {
      velocityOne -= changeVelocity;
      if (velocityOne < -maxVelocity) {
        velocityOne = -maxVelocity;
      }
    }
    if (downOne) {
      velocityOne += changeVelocity;
      if (velocityOne > maxVelocity) {
        velocityOne = maxVelocity;
      }
    } else {
      if (velocityOne < changeVelocity)
      {
        velocityOne = 0;
      } else if (velocityOne < 0)
      {
        velocityOne += changeVelocity;
      } else if (velocityOne > 0)
      {
        velocityOne -= changeVelocity;
      }
    }

    y += velocityOne;
    if (y < 0) {
      y = 0;
    }
    if (y < height) {
      y = height;
    } else {
      y += velocityOne;
      if (y < 0) {
        y = 0;
      }
      if (y < height) {
        y = height;
      }
    }
  }

  void move() {
  }

  // drawing paddles
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
