class CannonBall{
  PVector ballPos = new PVector();
  PVector ballVel = new PVector();
  float angle = PI/4;
  
  CannonBall(){
    //ballPos.x = 
  }
  
  void update(){
    pushMatrix();
    translate(30, 440);
    rotate(-PI/2+angle);
    fill(0);
    rect(0, 0, 10, 10);
    popMatrix();
  }
  
  
}
