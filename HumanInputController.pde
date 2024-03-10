import processing.serial.*;

class HumanInputController {
  Serial port;
  
  HumanInputController(Serial port) {
    this.port = port;
  }
  
  void drawHumanControl(String input) {
    if (input != null) {
      if (input.contains("bb")) {
        println("Im blue");
        text("blue button is pressed", 50, 480);
      }
      
      if (input.contains("gb")) {
        println("Im green");
        text("green button is pressed", 50, 480);    
      }
      
      if (input.contains("rb")) {
        println("Im red");
        text("red button is pressed", 50, 480);    
      }
    }
  }
}
