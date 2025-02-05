class Bird {
// variables
float x = width / 4; // bird x position
float y = height / 3.25; // bird y position
float radius = 50; // bird size

void show() {
  stroke(250, 200, 75);
  strokeWeight(0.50);
  noFill();
  circle(x, y, radius);
  }
}
