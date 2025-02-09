class Bird {
// variables
float x = width / 4; // bird x position
float y = height / 3.25; // bird y position
float radius = 50; // bird size
float y_speed = 1;
float y_velocity = 3;
boolean gravityOn = true;
boolean gravityOff = false;


void gravity() {
  
  if (gravityOn == true) {
    y += y_speed;
  }
  
}

void bottom() {
  
  if (y > height) {
    y = height - 25;
  }
}






void show() {
  stroke(250, 200, 75);
  strokeWeight(0.50);
  noFill();
  circle(x, y, radius);
  }
}
