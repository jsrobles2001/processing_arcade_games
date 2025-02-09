class Bird {
// variables
float x = width / 4;   // bird x position
float y = height / 3.25;   // bird y position
float radius = 50;   // bird size
float y_speed = 1;
boolean gravityOn;

// pulling the bird down with gravity
void gravity() {
  y_speed++;
  if (gravityOn == true) {
    y += y_speed;
  }
}

// if the bird touches the bottom of the screen
void bottom() {
  if (y > height) {   // if touching the ground
    gravityOn = false;
    y = height - 25;
  } if (y < height) {   // if above the ground
    gravityOn = true;
  }
}


void flapping() {
  
  
  
}


// drawing the bird
void show() {
  stroke(250, 200, 100);
  strokeWeight(0.75);
  noFill();
  circle(x, y, radius);
  }
}
