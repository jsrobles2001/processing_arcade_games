// start of the program

Puck puck;
Paddle left;
Paddle right;

void setup() {
  size(1000, 600);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
  
}

void draw() {
  background(50, 200, 75);
  
  left.show();
  right.show();
  puck.update();
  puck.edges();
  puck.show();
  
}
