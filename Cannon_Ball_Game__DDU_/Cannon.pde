class Cannon {
  //Angle of Cannon Barrel
  float angleC;

  //Moves Cannon Barrel Down
  void moveDown() {
    if (angleC < PI/2) {
      angleC += 0.02;
      println("Move Down!!" + (-PI/2+angleC));
    }
  }

  //Moves Cannon Barrel Up
  void moveUp() {
    if (angleC > 0) {
      angleC -= 0.02;
      println("Move Up!!" + (-PI/2+angleC));
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
      CannonBalls.add(new CannonBall());
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
    rotate(-PI/2+angleC);
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
