// 


/*
~~TO-DO LIST~~
 * Add pieces, gravity, and collision for board and pieces
 * Add states for title and results
 */

// VARIABLES
Grid grid;

void setup() {
  size(777, 777);
  grid = new Grid();
  
}


void draw() {
  
  background(0);
  colorMode(HSB, 0, 1, 1000);
  strokeWeight(2.5);
  stroke(0, 0, 255);

  grid.lines();
}
