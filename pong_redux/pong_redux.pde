// credit to coding train YT channel
// https://youtu.be/IIrC5Qcb2G4?feature=shared

/*
~~TO-DO LIST~~
* Add states for title and results
* Add paddles
*/

// VARIABLES
Puck puck;
Paddle left;
Paddle right;

PFont Arcade; // 8-bit font

String currentState = "";
String[] states = {"title", "gameloop", "results"};

int leftScore = 0;
int rightScore = 0;


// SETUP
void setup() {
  size(1200, 600);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
  Arcade = createFont("ARCADECLASSIC.TTF", 50); // the size needs to be noticable

  
}

// RENDERING
void draw() {
  background(50, 200, 100);
  puck.update();
  puck.edges();
  puck.show();
  left.show();
  right.show();
  
  textFont(Arcade);
  text(leftScore, width / 2 - 432, 50);
  text(rightScore, width - 192, 50);
  
}

// GAME LOOP
void repeat() {
  for (;;) {    
    
    
    
    
  }
}
