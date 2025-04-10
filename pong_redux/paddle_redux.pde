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
  float changeVelocity = 1;
  float maxVelocity = 2;

  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w + w; // the x position is doubled t
    } else {
      x = width - w - w; // the position mirrors the left
    }
  }

  void update() {

    if (upOne == true) {
      velocityOne -= changeVelocity;
      if (velocityOne < -maxVelocity) {
        velocityOne = -maxVelocity;
      } 
    }
    
    if (downOne == true) {
      velocityOne += changeVelocity;
      if (velocityOne > maxVelocity) {
        velocityOne = maxVelocity;
      } 
    }
    
      if (velocityOne < changeVelocity) {
        velocityOne = 0;
      }



    velocityOne += changeVelocity;
    y += velocityOne;
    if (y < 0 + 75) {
      y = 0 + 75;
    }
    if (y > height - 75) {
      y = height - 75;
    }
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
