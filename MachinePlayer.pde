class MachinePlayer {
  private boolean[] machineLane = new boolean[3];
  private ArrayList<Button> machineButtons = new ArrayList<Button>();
  
  void setMachineLane(boolean[] userInputMachineLane) {
    machineLane = userInputMachineLane;
  }
  
  void setMachineButton(Button[] buttonUI) {
    for (int i = 0; i < buttonUI.length; i++) {
      if (machineLane[i]) {
        machineButtons.add(buttonUI[i]);
      }
    }
  }
  
  boolean[] getMachineLane() {
    return machineLane;  
  }
  
  void play(Beat[] beats) {
    for (int i = 0; i < beats.length; i++) {
      for (int j = 0; j < machineButtons.size(); j++) {
        boolean distance = beatBtnDistance(beats[i], machineButtons.get(j));
        if (distance) {
          keyPressAction(beats[i], machineButtons.get(j));
        }
      }
    }
  }
  
  boolean beatBtnDistance(Beat beat, Button btn) {
    return Math.sqrt(Math.pow((btn.anchor.x - beat.anchor.x),2) + Math.pow((btn.anchor.y - beat.anchor.y), 2)) < 0.2;
  }
  
  void keyPressAction(Beat beat, Button pressed) {
     beat.hit = true;
     pressed.hit = true;
  }
}
