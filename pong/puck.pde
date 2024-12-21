// puck object
class Puck {
  float x = width / 2;
  float y = height / 2;
  float xspeed = int(random(-4, 4));
  float yspeed = int(random(-4, 4));



  void update() {
    // giving the puck velocity
    x = x + xspeed;
    y = y + yspeed;

    // this is to make sure xspeed random() never hits zero
    if (xspeed == 0) {
      xspeed = xspeed + 1;
    }
    // same thing with yspeed random
    if (yspeed == 0) {
      yspeed = yspeed - 1;
    }
    
    
  }



  void edges() {
    // bounces when the puck touches the screen
    if (y < 0 || y > height) {
      yspeed *= -1;
    }
    // calls reset() when the puck reaches either side
    if (x > width || x < 0) {
      xspeed *= -1;
    }
  }




  void show() {
    fill(255);
    noStroke();
    square(x - 12.5, y - 12.5, 25); // the square gets drawn at the top left, subtracting by half it's size will put it fully centered
  }
}
