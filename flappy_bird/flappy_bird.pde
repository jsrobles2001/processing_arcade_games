// Credit to Coding Train YT Channel
// https://youtu.be/aKiyCeIuwn4?feature=shared
// The base of some of this code is from here

// VARIABLES

Bird bird;

String currentState = "";
String[] states = {"title", "gameloop", "results"};

boolean playerPressUp;

// SETUP
void setup () {
  size(500, 700);
  bird = new Bird();
}

// RENDERING
void draw () {
  background(0);

  bird.show();
  bird.update();
  bird.bottom();
}

void keyTyped() {

  if (key == ' ') {
    bird.flap();
  }
}
