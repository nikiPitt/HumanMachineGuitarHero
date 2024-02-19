public class Beat {
  float[] buttonX = {60, 120, 180};
  float speed = 2;
  PVector anchor = new PVector();
  boolean hit;
  boolean hitInProgress = false;

  Beat() { 
    anchor = new PVector(buttonX[(int) random(3)], random(-500, -100));
    hit = false; 
  }
  
  void fall() {
    anchor.y += speed;
    
    if (anchor.y > height) {
      anchor.y = random(-500, -100);
      hit = false;
      hitInProgress = false;
    }
  }
  
  void show() {
    if (!hit) {
      fill(#F4F523);
      noStroke();
    } else {
      noFill();
      noStroke();
    }
    ellipse(anchor.x, anchor.y, 20, 20);
  }
  
  void collision() {
    
  }
  
}
