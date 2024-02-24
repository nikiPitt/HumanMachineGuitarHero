class GameStartScene {
  boolean startSceneFlag = true;
  Button gameStartBtn;
  
  void generateGameStartSceneObjects() {
    gameStartBtn = new Button(width/2, height/2);
  }
  
  void drawGameStartScene() {
      rectMode(CENTER);
      fill(0);
      rect(gameStartBtn.anchor.x, gameStartBtn.anchor.y, 100, 25);
      textAlign(CENTER, CENTER);
      fill(255);
      text("Game Start", width/2, height/2);
  }
}
