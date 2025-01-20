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
      if (x > p.x) {
        // mapping the left paddle's segments to change the puck angle, doesn't work
        //float diff = y - (p.y - p.h / 2);
        //float rad = radians(45);
        //float angle = map(diff, 0, p.h, -rad, rad); // -45 to 45 degress
        //xspeed = 5 * cos(angle);
        //yspeed = 5 * sin(angle);
        //x = p.x + p.w / 2 + puck_radius;
        xspeed *= -1;
        xspeed++;
      if (y > p.y + p.w) {
        //yspeed *= -1;
        //yspeed++;
      } if (y < p.y + p.w) {
        //yspeed *= -1;
        //yspeed++;
      }
    }
  }
}
  // checking if the puck hits the right paddle for collision
  void checkPaddleRight(Paddle p) {
    if (y < p.y + p.h / 2 && y > p.y - p.h / 2 && x + puck_radius > p.x - p.w / 2) {
      if (x < p.x) {
        // mapping the right paddle's segments to change the puck angle, doesn't work
        //float diff = y + (p.y + p.h / 2);
        //float rad = radians(135);
        //float angle = map(diff, 0, p.h, -rad, rad); // -135 to 135 degrees
        //xspeed = 5 * cos(angle);
        //yspeed = 5 * sin(angle);
        //x = p.x - p.w / 2 - puck_radius;
        xspeed *= -1;
        xspeed--;
      if (y > p.y + p.w) {
        //yspeed *= -1;
       // yspeed--;
      } if (y < p.y + p.w) {
        //yspeed *= -1;
        //yspeed--;
      }
    }
  }
}
  // updating every frame
  void update() {
    // giving the puck velocity
    x = x + xspeed;
    y = y + yspeed;

    if (xspeed > 14) {
      xspeed = 7;
    }
    // this is to make sure xspeed random() never hits zero, old code
    //if (xspeed == 0) {
    //xspeed = xspeed + 2;
    //}
    // same thing with yspeed random, old code
    //if (yspeed == 0) {
    //yspeed = yspeed - 2;
    //}
  }
  // reset position
  void reset() {
    // this shouldn't get called in draw() or the puck will stay center screen
    x = width / 2 - 12.5;
    y = height / 2 - 12.5;

    // old code which helped put the puck in a random direction at spawn, not very good
    //xspeed = int(random(-7, 7));
    //yspeed = int(random(-7, 7));

    float angle = random(-TAU / 8, TAU / 8);
    xspeed = 5 * cos(angle);
    yspeed = 5 * sin(angle);

    if (random(1) < 0.5) {
      xspeed *= -1;
    }
  }

  void edges() {
    // bounces when the puck touches the screen
    if (y < 0 + 25 || y > height) {
      yspeed *= -1;
    }
    // calls reset() when the puck reaches either side
    if (x > width + 25) {
      //leftScore++;
      //reset();
      xspeed *= -1; // debug
    }

    if (x < 0) {
      //rightScore++;
      //reset();
      xspeed *= -1; // debug
    }
  }
  // drawing puck
  void show() {
    fill(255);
    noStroke();
    square(x - 12.5, y - 12.5, puck_radius); // the square gets drawn at the top left, subtracting by half it's size will put it fully centered
  }
}
