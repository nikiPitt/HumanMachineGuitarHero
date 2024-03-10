class GameUI {
  Button[] buttons = new Button[3];
  GuitarString[] strings = new GuitarString[3];
  
  void generateGameUIObjects() {
    // Generate Button objects
    for (int j = 0; j < buttons.length; j++) {
      buttons[j] = new Button(String.valueOf(j), 60 + 60 * j, height * 4/5);
      strings[j] = new GuitarString(60 + 60 * j, 0); 
    }
  }
  
  void drawGameUIObjects() {
    // Render Button objects  
    for (int j = 0; j < buttons.length; j++) {
      strings[j].show();
      buttons[j].show();
    }
  }
  
  void drawLaneSelection(boolean[] lane) {
    textAlign(CENTER);
    fill(0);
    textSize(15);
    for (int i = 0; i < lane.length; i ++) {
      if (lane[i]) {
        text("<H>", 60 + 60 * i, height * 6/7);
      } else {
        text("<M>", 60 + 60 * i, height * 6/7);
      }
    }
  }
}
