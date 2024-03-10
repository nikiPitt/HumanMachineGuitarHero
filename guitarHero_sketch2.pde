// import libraries
import processing.serial.*;

// Initialization field
Serial port = new Serial(this, "/dev/cu.usbserial-10", 9600);
HumanInputController humanplayer = new HumanInputController(port);
GameStartScene start = new GameStartScene();
GameUI gameUI = new GameUI();
StartLaneSelect startLane = new StartLaneSelect();
MachinePlayer machine = new MachinePlayer();
GameScene game = new GameScene();
KeyAction keyAction = new KeyAction();


void setup() {
  // Set up window size
  size(640, 600);
  
  // Set up application objects
  start.generateGameStartSceneObjects();
  gameUI.generateGameUIObjects();
  game.generateGameSceneObjects();
}


void draw() {
  background(230, 230, 250);
  // Retrieve Serial input
  String input = port.readString();
  
  // Render and animate beat objects
  if (start.startSceneFlag) {
     start.drawGameStartScene();
  }
  if (!start.startSceneFlag && !startLane.startLaneSelected && !game.gameSceneFlag) {
     startLane.drawStartLaneSelect();
     startLane.receiveHumanInput(input);     
     gameUI.drawGameUIObjects();
     gameUI.drawLaneSelection(startLane.humanInput);
     machine.setMachineLane(startLane.machineInput);
     machine.setMachineButton(gameUI.buttons);
   }
  if (game.gameSceneFlag) {
    gameUI.drawLaneSelection(startLane.humanInput);
    gameUI.drawGameUIObjects();
    game.drawGameSceneObject(gameUI.buttons);
    startLane.receiveHumanInput(input);     
    //machine.play(game.beats);
  }
}


// Functions related to key press and release

void keyPressed() {
  if (!startLane.startLaneSelected) {
    startLane.gameStart(game);
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
