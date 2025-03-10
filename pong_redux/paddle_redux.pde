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
  float changeVelocity = 0.025;
  float maxVelocity = 2;

  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w + w; // the x position is doubled t
    } else {
      x = width - w - w; // the position mirrors the left
    }
  }

  void update (boolean upOne) {

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
    } 
      if (velocityOne < changeVelocity) {
        velocityOne = 0;
      } else if (velocityOne < 0) {
        velocityOne += changeVelocity;
      } else if (velocityOne > 0) {
        velocityOne -= changeVelocity;
      }




    y += velocityOne;
    if (y < 0) {
      y = 0 + 75;
    }
    if (y > height) {
      y = height - 75;
    }
  }
  
  void keyReleased() {
    
    
    
  }

  void keyPressed() {
    
    
    
  }

  // drawing paddles
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
