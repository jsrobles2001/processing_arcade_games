class Bird {
  // variables
  float x = width / 4;   // bird x position
  float y = height / 3.25;   // bird y position
  float radius = 50;   // bird size
  float gravity = 4;
  float velocity = 0;
  float lift = -45;
  boolean gravityOn;

  // pulling the bird down with gravity
  void update() {
    velocity += 6.25;
    velocity += gravity;
    y += velocity;

    if (velocity > gravity) {
      velocity = gravity;
    }
    if (gravityOn != true) {
      gravity = 0;
    }
    if (y < height) {
      gravityOn = true;
    }
  }

  // if the bird touches the bottom of the screen
  void bottom() {
    if (y > height - 25) {   // if touching the ground
      gravityOn = false;
      y = height - 25;
      velocity = 0;
      gravity = 0;
    }
    if (y < 0 + 25) {   // if above the ground
      y = 0 + 25;
      velocity = 0;
    }
  }


  void flap() {
    velocity = lift; // player jolts upwards
  }


  // drawing the bird
  void show() {
    stroke(250, 200, 100);
    strokeWeight(0.75);
    noFill();
    circle(x, y, radius);
  }
}
