// paddle object
class Paddle {
  // paddle properties
  float x;
  float y = height / 2;
  float w = 25;
  float h = 150;
  float velocity = 0;
  float acceleration = 0;
  float maxAccel = 1.50;
  boolean goingUp, goingDown;

  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w + w; // the x position is doubled t
    } else {
      x = width - w - w; // the position mirrors the left
    }
  }

  void update() {

    if (goingUp) {
      acceleration = -maxAccel;
    }
    if (goingDown) {
      acceleration = maxAccel;
    }
    if (goingUp == goingDown) { // if they're both true or false, accel equals 0
      acceleration = 0;
    }

    velocity += acceleration; // acceleration
    velocity *= 0.89;
    y += velocity; // velocity
    y = constrain(y, 0 + h / 2, height - h / 2);
  }



  // drawing paddles
  void show() {
    //fill(255);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
