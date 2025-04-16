// Credit to Coding Train YT Channel
// https://youtu.be/aKiyCeIuwn4?feature=shared
// The base of some of this code is from here

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
}

void keyTyped() {

  if (key == ' ') {
    bird.flap();
  }
}
