GameStartScene start = new GameStartScene();
GameUI gameUI = new GameUI();
StartLaneSelect startLane = new StartLaneSelect();
GameScene game = new GameScene();
KeyAction keyAction = new KeyAction();


void setup() {
  // Set up window size
  size(640, 600);
  start.generateGameStartSceneObjects();
  gameUI.generateGameUIObjects();
  game.generateGameSceneObjects();
}


void draw() {
  background(230, 230, 250);
   // Render and animate beat objects
   if (start.startSceneFlag) {
      start.drawGameStartScene();
   }
   if (!start.startSceneFlag && !startLane.startLaneSelected) {
     startLane.drawStartLaneSelect();
     gameUI.drawGameUIObjects();
     gameUI.drawLaneSelection(startLane.humanInput);
   }
   if (game.gameSceneFlag) {
     gameUI.drawGameUIObjects();
     game.drawGameSceneObject(gameUI.buttons);
   }
}


// Functions related to key press and release

void keyPressed() {
  if (!startLane.startLaneSelected) {
    startLane.receiveHumanInput(game);
  }
  if (game.gameSceneFlag) {
    keyAction.keyPressAction(gameUI.buttons);
  }
}

void keyReleased() {
  if (game.gameSceneFlag) {
    keyAction.keyReleaseAction(gameUI.buttons);    
  }
}

void mouseClicked() {
  start.startSceneFlag = false;
}
