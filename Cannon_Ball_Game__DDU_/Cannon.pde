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
    rect(0, 0, 10, 10);
    println("Shots Fired!");
  }

  //Draws Cannon
  void drawCannon() {
    //Cannon Barrel
    fill(200, 0, 0);
    pushMatrix();
    translate(30, 440);
    rotate(-PI/2+angle);
    rect(0, -7, 50, 15);
    popMatrix();

    //Base of the Cannon
    pushMatrix();
    translate(30, 440);
    fill(100);
    arc(0, 10, 50, 50, PI, PI*2);
    popMatrix();


    //Origo Dot
    pushMatrix();
    translate(30, 440);
    fill(200, 200, 0);
    ellipse(0, 0, 4, 4);
    popMatrix();
  }
}
