class CannonBall{
  PVector ballPos;
  CannonBall(){
   ballPos = new PVector(30, 440);
   ballSpdVert = -10;
   ballSpdHorizon = 10;
  }
  void drawBall(){
 fill(0);
 ellipse(ballPos.x, ballPos.y, ballSize, ballSize);
 ballPos.y = constrain(ballPos.y, 0, 440);
 if(ballPos.y >= 440){
  bounceBot(440); 
 }
}

void applyGravity(){
 ballSpdVert += gravity;
 ballPos.y = ballPos.y + ballSpdVert;
 ballSpdVert -= (ballSpdVert * airFriction);
}

void applyHorizonSpd(){
 ballPos.x = ballPos.x + ballSpdHorizon;
 ballSpdHorizon -= (ballSpdHorizon * airFriction);
}

void bounceBot(float surface){
  ballPos.y = surface-(ballSize/2);
  ballSpdVert *= -1;
  ballSpdVert -= (ballSpdVert * friction);
}

void bounceTop(float surface){
  ballPos.y = surface+(ballSize/2);
  ballSpdVert *= -1;
  ballSpdVert -= (ballSpdVert * friction);
}

void bounceL(float surface){
 ballPos.x =  surface + (ballSize/2);
 ballSpdHorizon *= -1;
 ballSpdHorizon -= (ballSpdHorizon * friction);
}

void bounceR(float surface){
  ballPos.x = surface - (ballSize/2);
  ballSpdHorizon *= -1;
  ballSpdHorizon -= (ballSpdHorizon * friction);
}

void ballConstrain(){
  if(ballPos.y+(ballSize/2) > height){
    bounceBot(height);
  }
  if(ballPos.y-(ballSize/2) < 0){
   bounceTop(0); 
  }
  if(ballPos.x-(ballSize/2) < 0){
   bounceL(0); 
  }
  if(ballPos.x-(ballSize/2) > width){
   bounceR(width); 
  }
}
}
