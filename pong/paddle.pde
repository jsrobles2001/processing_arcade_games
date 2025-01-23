// paddle object
class Paddle {
  // paddle properties
  float x;
  float y = height / 2;
  float w = 25;
  float h = 150;
  float y_Change = 0;

  Paddle (boolean left) {
    // code for if the paddle is left or right
    if (left) {
      x = w;
    } else {
      x = width - w;
    }
  }

  void update() {
    // the position + speed that updates for the paddles
    y += y_Change;
    // stoping the paddle from going off screen
    y = constrain(y, 0 + 75, height - 75);
  }

  void move(float steps) {
    // gets the paddles to move
    y_Change = steps;
  }
  
  // drawing paddles
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
