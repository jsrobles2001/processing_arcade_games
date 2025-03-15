class Bird {
  // variables
  float x = width / 4;   // bird x position
  float y = height / 3.25;   // bird y position
  float radius = 50;   // bird size
  //float ySpeed = 0.25;
  //float ySpeedMax = 5;
  float gravity = 4;
  float velocity = 0;
  float lift = -2;
  boolean gravityOn;

  // pulling the bird down with gravity
  void gravity() {
    //y += ySpeed;
    //if (gravityOn == true) {
      //if (ySpeed > ySpeedMax) {
        //ySpeed = ySpeedMax;
      //} else {
        //ySpeed++;
      //}
    //}
    velocity += gravity;
    y += velocity;
      
    if (gravityOn != true) {
      gravity = 0;
    }
    if (y < height) {
      gravityOn = true;
    }
  }
    // if the bird touches the bottom of the screen
    void bottom() {
      if (y > height) {   // if touching the ground
        gravityOn = false;
        y = height - 25;
        velocity = 0;
        gravity = 0;
      }
      if (y < 0) {   // if above the ground
        y = 0 + 25;
        velocity = 0;
      }
    }


    void flapping() {
      if (playerPressUp) {
      velocity += lift;
      }
    }


    // drawing the bird
    void show() {
      stroke(250, 200, 100);
      strokeWeight(0.75);
      noFill();
      circle(x, y, radius);
    }
  }
