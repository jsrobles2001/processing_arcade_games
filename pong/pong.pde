// start of the program



Puck puck;

void setup() {
  size(1000, 600);
  puck = new Puck();
  
}

void draw() {
  background(50, 200, 75);
  
  puck.update();
  puck.edges();
  puck.show();
  
}
