// credit to Coding Train YT Channel
// https://youtu.be/aKiyCeIuwn4?feature=shared

Bird bird;

boolean playerPressUp;

void setup () {
  size(412, 618);
  bird = new Bird();
}

void draw () {
  background(0);
  
  bird.show();
  bird.update();
  bird.bottom();
  bird.flapping();
}

void update() {
  for (;;) {    
    
    
  }
}

void keyPressed() {
  
  if (key == ' ') {
    playerPressUp = true;
  }
}

void keyReleased() {
  
  if (key == ' ') {
    playerPressUp = false;
  }
}
