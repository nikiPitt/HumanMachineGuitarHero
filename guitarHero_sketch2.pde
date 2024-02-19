Beat[] beats = new Beat[20];
Button[] buttons = new Button[3];
GuitarString[] strings = new GuitarString[3];
Score gameScore = new Score();

void setup() {
  // Set up window size
  size(640, 600);
   // Generate Button objects
  for (int j = 0; j < buttons.length; j++) {
    buttons[j] = new Button(60 + 60 * j, height * 4/5);
    strings[j] = new GuitarString(60 + 60 * j, 0); 
  }
  // Generate Beat objects
  for (int i = 0; i < beats.length; i++) {
    beats[i] = new Beat();   
  }
}


void draw() {
  background(230, 230, 250);
   // Render and animate beat objects
  for (int i = 0; i < beats.length; i++) {
    beats[i].fall();
    beats[i].show();
    detectCollision(beats[i]);
  }
  // Render Button objects  
  for (int j = 0; j < buttons.length; j++) {
    strings[j].show();
    buttons[j].show();
  }
  // Render Game Score
  gameScore.showScore(400, 50);
}


// Functions related to key press and release

void keyPressed() {
  if (key == 'a') {
    buttons[0].hit = true;
  }
  if (key == 's') {
    buttons[1].hit = true;
  }
    if (key == 'd') {
    buttons[2].hit = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    buttons[0].hit = false;
  }
  if (key == 's') {
    buttons[1].hit = false;
  }
  if (key == 'd') {
    buttons[2].hit = false;
  }
}

// Helper functions

void detectCollision(Beat beat) {
  for (int i = 0; i < buttons.length; i++) {
    if (buttons[i].hit & distance(beat.anchor.x, beat.anchor.y, buttons[i].anchor.x, buttons[i].anchor.y)) {
      beat.hit = true;
      if (!beat.hitInProgress) {
        gameScore.score += 1;
        beat.hitInProgress = true;
      }
    }
  }
}

boolean distance(double beatX, double beatY, double btnX, double btnY) {
  return Math.sqrt(Math.pow((btnX - beatX),2) + Math.pow((btnY - beatY), 2)) < 25;
}
  
