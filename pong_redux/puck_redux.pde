// puck object
class Puck {
  // PROPERTIES
  float x = width / 2;
  float y = height / 2;
  float xspeed;
  float yspeed;
  float puck_radius = 25;
  boolean beforeX, afterX, beforeY, afterY
    //, ballBefore, ballAfter
    ;

  Puck() {
    reset();
  }

  void paddleCollision(Paddle left) {

    beforeX = true;
    afterX = false;
    beforeY = true;
    afterY = false;

    if (x + puck_radius >= left.x - left.w / 5
      && x - puck_radius <= left.x + left.w / 5) {
      beforeX = false;
      println(beforeX, "for beforeX");
      afterX = true;
      println(afterX, "for afterX");
    }
    if (y + puck_radius < left.y - left.h / 2.5
      && y - puck_radius > left.y + left.h / 2.5) {
      beforeY = false;
      println(beforeY, "for beforeY");
      afterY = true;
      println(afterY, "for afterY");
    }

    if (x + puck_radius >= left.x - left.w / 5
      && x - puck_radius <= left.x + left.w / 5
      && y + puck_radius < left.y - left.h / 2.5
      && y - puck_radius > left.y + left.h / 2.5) {
      xspeed *= -1;
    }
  }

  // updating every frame
  void update() {
    // giving the puck velocity
    x = x + xspeed;
    y = y + yspeed;
    // if puck goes too fast, reduce it
    if (xspeed > 16) {
      xspeed = 10;
    }
  }
  // reset position
  void reset() {
    // this shouldn't get called in draw() or the puck will stay center screen
    x = width / 2 - 12.5;
    y = height / 2 - 12.5;
    float angle = random(-TAU / 8, TAU / 8);
    xspeed = 5 * cos(angle);
    yspeed = 5 * sin(angle);

    if (random(1) < 0.5) {
      xspeed *= -1;
    }
  }

  void edges() {
    // bounces when the puck touches the bottom or top of the screen
    if (y < 0 + puck_radius / 2 || y > height - puck_radius / 2) {
      yspeed *= -1;
    }
    // calls reset() when the puck reaches either side of the screen
    if (x > width + puck_radius) {
      // leftScore++; LATER
      // reset();
      xspeed *= -1;
    }
    if (x < 0 - puck_radius) {
      // rightScore++; LATER
      // reset();
      xspeed *= -1;
    }
  }

  void show() {
    fill(255);
    noStroke();
    square(x, y, puck_radius); // the square gets drawn at the top left, subtracting by half it's size will put it fully centered
    noFill();
    stroke(2);
    square(x, y, puck_radius * 2);
  }
}
