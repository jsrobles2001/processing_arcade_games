// credit to

float x;
float y;
float radius = 50;


void setup () {
  
  size(412, 618);
  background(0);
  x = width / 4;
  y = height / 3.25;
}

void draw () {
  
  noStroke();
  fill(250, 200, 75);
  circle(x, y, radius);
  
}
