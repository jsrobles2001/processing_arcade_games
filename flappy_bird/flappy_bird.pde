// credit to

Bird bird;

boolean playerPressUp;

void setup () {
  
  size(412, 618);
  bird = new Bird();
}

void draw () {
  background(0);
  
  bird.show();
  bird.gravity();
  bird.bottom();
}

void keyReleased() {
  
    switch(key) {
   case 'F':
   case 'f':
     playerPressUp = false;
     break;
   }
}

void keyPressed() {
  
  switch(key) {
   case 'F':
   case 'f':
     playerPressUp = true;
     break;
  }
}
