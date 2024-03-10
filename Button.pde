class Button {
  PVector anchor;
  String name;
  boolean hit;
  
  Button(String name, int x, int y) { 
    this.name = name;
    anchor = new PVector(x, y);
  }
  
  void show() {
    rectMode(CENTER);
    if (!hit) {
      if (this.name.equals("0")) {
        fill(0, 0, 255);
      } else if (this.name.equals("1")) {
        fill(0, 255, 0);
      } else if (this.name.equals("2")) {
        fill(255, 0, 0);
      }    
    } else {
      fill(225);
    }
    rect(anchor.x, anchor.y, 25, 25);    
  }
}
