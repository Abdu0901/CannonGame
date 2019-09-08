class CannonBall {
  PVector ballPos = new PVector();
  PVector ballVel = new PVector();
  float angle;

  CannonBall() {
    ballPos.x = 30;
    ballPos.y = 440;
  }
  
void moveDown() {
    if (angle < PI/2) {
      angle += 0.02;
    }
  }

  void moveUp() {
    if (angle > 0) {
      angle = angle - 0.02;
    }
  }
  void update() {
    pushMatrix();
    translate(30, 440);
    rotate(-PI/2+angle);
    fill(0);
    rect(0, 0, 10, 10);
    popMatrix();
  }
}
