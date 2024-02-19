class Button {
  PVector anchor;
  boolean hit;
  
  Button(int x, int y) { 
    anchor = new PVector(x, y);
  }
  
  void show() {
    rectMode(CENTER);
    if (!hit) {
      fill(0);      
    } else {
      fill(255);
    }
    rect(anchor.x, anchor.y, 25, 25);    
  }
}
