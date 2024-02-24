class GameScene {
  boolean gameSceneFlag = false;
  Beat[] beats = new Beat[20];
  Score gameScore = new Score();
  
  void generateGameSceneObjects() {
    // Generate Beat objects
    for (int i = 0; i < beats.length; i++) {
      beats[i] = new Beat();   
    }
  }

  void drawGameSceneObject(Button[] buttons) {
    for (int i = 0; i < beats.length; i++) {
      beats[i].fall();
      beats[i].show();
      detectCollision(buttons, beats[i]);
    }
    // Render Game Score
    gameScore.showScore(400, 50);
  }
  
  void detectCollision(Button[] buttons, Beat beat) {
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
}
