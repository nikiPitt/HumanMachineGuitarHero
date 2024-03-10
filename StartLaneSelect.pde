class StartLaneSelect {
  boolean startLaneSelected = false;
  boolean[] humanInput = {false, false, false};
  boolean[] machineInput = {true, true, true};
  
  void drawStartLaneSelect() {
    if (!startLaneSelected) {
      textSize(15);
      textAlign(LEFT);
      text("Choose your lane to start with\n" +
           "by pressing blue, green, or red button.\n" +
           "By default all lanes are machine's" , 3 * width/6, height * 2/5);
    }
  }
  
  void receiveHumanInput(String input) {
  if (input != null) {
    if (input.equals("bb")) {
      humanInput[0] = !humanInput[0];
      machineInput[0] = !machineInput[0];
      } else if (input.equals("gb")) {
      humanInput[1] = !humanInput[1];
      machineInput[1] = !machineInput[1];
      } else if (input.equals("rb")) {
      humanInput[2] = !humanInput[2];
      machineInput[2] = !machineInput[2];      
      }
    }
  }
  
  void gameStart(GameScene game) {
    if (key == ENTER) {
      startLaneSelected = true;
      game.gameSceneFlag = true;
    }
  }
}
