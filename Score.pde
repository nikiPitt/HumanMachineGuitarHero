class Score {
  int score = 0;
  double hContribution;
  double mcontribution;
  
  Score() {
    //Default constructor
  }
  
  void showScore(float x, float y) {
    textSize(30);
    fill(#050505);
    text("Current score: " + score, x, y);
  }
}
