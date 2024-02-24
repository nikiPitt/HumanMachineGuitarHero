class KeyAction {
  void keyPressAction(Button[] buttonList) {
    if (key == 'a') {
      buttonList[0].hit = true;
    }
    if (key == 's') {
      buttonList[1].hit = true;
    }
      if (key == 'd') {
      buttonList[2].hit = true;
    }
  }
  
  void keyReleaseAction(Button[] buttonList) {
    if (key == 'a') {
      buttonList[0].hit = false;
    }
    if (key == 's') {
      buttonList[1].hit = false;
    }
    if (key == 'd') {
      buttonList[2].hit = false;
    }
  }
}
