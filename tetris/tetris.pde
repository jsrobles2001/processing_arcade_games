// 

int lineCount = 30;
int lineSpace = 20;

void setup() {
  
  size(777, 777);
  
}


void draw() {
  
  background(0);
  colorMode(HSB, 0, 1, 1000);
  strokeWeight(2.5);
  stroke(0, 0, 255);
  
    for (int i = 10; i <= lineCount; i++) {
    float lineX = i * lineSpace; // spreads across on the x-axis
    line(400, lineX, 600, lineX);
  }

  for (int i = 20; i <= lineCount; i++) {
    float lineY = i * lineSpace; // spreads across on the y-axis
    line(lineY, 200, lineY, 600);
  }
}
