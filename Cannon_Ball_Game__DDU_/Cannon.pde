class Cannon {
  //Angle of Cannon Barrel
  float angle = PI/4;
  
//Moves Cannon Barrel Down
  void moveDown() {
    if (angle < PI/2) {
      angle += 0.02;
      println("Move Down!!" + (-PI/2+angle));
    }
  }

//Moves Cannon Barrel Up
  void moveUp() {
    if (angle > 0) {
      angle = angle - 0.02;
      println("Move Up!!" + (-PI/2+angle));
    }
  }
  
  //Fires CannonBalls from the Cannon
  void fire() {
    ellipse(0,0,10,10);
    println("Shots Fired!");
  }
  
