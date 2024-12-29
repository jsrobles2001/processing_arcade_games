// puck object
class Puck {
  // puck properties
  float x = width / 2;
  float y = height / 2;
  //float xspeed = int(random(-7, 7));
  //float yspeed = int(random(-7, 7));
  float xspeed;
  float yspeed;
  float puck_radius = 25;

  Puck() {
    reset();
  }
  
  
  // checking if the puck hits the left paddle for collision
  void checkPaddleLeft(Paddle p) {
    if (y < p.y + p.h / 2 && y > p.y - p.h / 2 && x - puck_radius < p.x + p.w / 2) {
      xspeed *= -1;
    }
  }
  // checking if the puck hits the right paddle for collision
    void checkPaddleRight(Paddle p) {
    if (y < p.y + p.h / 2 && y > p.y - p.h / 2 && x + puck_radius > p.x - p.w / 2 + 25) {
      xspeed *= -1;
    }
  }

  void update() {
    // giving the puck velocity
    x = x + xspeed;
    y = y + yspeed;

    // this is to make sure xspeed random() never hits zero
    if (xspeed == 0) {
      xspeed = xspeed + 2;
    }
    // same thing with yspeed random
    if (yspeed == 0) {
      yspeed = yspeed - 2;
    }
  }

  void reset() {
    // this shouldn't get called in draw() or the puck will stay center screen
    x = width / 2 - 12.5;
    y = height / 2 - 12.5;
    
    //xspeed = int(random(-7, 7));
    //yspeed = int(random(-7, 7));
    
    float angle = random(TWO_PI);
    xspeed = 2 * cos(angle);
    yspeed = 5 * sin(angle);
  }

  void edges() {
    // bounces when the puck touches the screen
    if (y < 0 + 25 || y > height) {
      yspeed *= -1;
    }
    // calls reset() when the puck reaches either side
    if (x > width + 25 || x < 0) {
      reset();
    }
  }




  void show() {
    fill(255);
    noStroke();
    square(x - 12.5, y - 12.5, puck_radius); // the square gets drawn at the top left, subtracting by half it's size will put it fully centered
  }
}
