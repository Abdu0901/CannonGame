class Cannon {
  //Angle of Cannon Barrel
  float angle;

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

  //Makes sure only one cannon ball is fired at a time
  void keyPressed() {
    final int k = keyCode;
    if (k == ' ') {
      fire();
    }
  }
  //Fires CannonBalls from the Cannon
  void fire() {
    if (canShoot == true) {
      cannonBalls.add(new CannonBall());
      canShoot = false;
      canShootCounter = 0;
      println("cannon fire");
    }
    if (canShoot == false) {
      canShootCounter++;
      if (canShootCounter == 10) {
        canShoot = true;
      }
    }
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
