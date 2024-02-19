class GuitarString {
  PVector anchor;
  
  GuitarString(int x, int y) { 
    anchor = new PVector(x, y);
  }
  
  void show() {
    stroke(255);
    line(anchor.x, 0, anchor.x, height);   
  }
}
