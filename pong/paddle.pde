// paddle object
class Paddle {
  // paddle properties
  float x;
  float y = height / 2;
  float w = 25;
  float h = 150;
  
  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w;
    } else {
      x = width - w;
    }
  }
  
  void move() {
    
  }
  
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  
  
  
  
  
}
