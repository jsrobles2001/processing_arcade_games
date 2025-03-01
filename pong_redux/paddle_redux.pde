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
      x = w;
    } else {
      x = width - w;
    }
  }

  void update (boolean left) {
    
    if (left) {
      velocityOne -= changeVelocity;
    if (velocityOne < -maxVelocity) {
       
    }
    
    }
    
    
    
    
    if (left) {
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
  }

  void move() {
  }

  // drawing paddles
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
