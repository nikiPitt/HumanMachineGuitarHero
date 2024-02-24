class StartLaneSelect {
  boolean startLaneSelected = false;
  boolean[] humanInput = {false, false, false};
  boolean[] machineInput = {true, true, true};
  
  
  void drawStartLaneSelect() {
    if (!startLaneSelected) {
      textSize(15);
      textAlign(LEFT);
      text("Choose your lane to start with\n" +
           "by pressing key a, s, and d.\n" +
           "By default all lanes are machine's" , 3 * width/6, height * 2/5);
    }
  }
  
  void receiveHumanInput(GameScene game) {
    if (key == 'a') {
      humanInput[0] = !humanInput[0];
      machineInput[0] = !machineInput[0];
    }
    if (key == 's') {
      humanInput[1] = !humanInput[1];
      machineInput[1] = !machineInput[1];
      
    }
    if (key == 'd') {
      humanInput[2] = !humanInput[2];
      machineInput[2] = !machineInput[2];      
    }
    if (key == ENTER) {
      startLaneSelected = true;
      game.gameSceneFlag = true;
    }
  }
}
