//this class loads in png images of the balloons and gives it a scale and position.

class Balloons {
  PImage balloonsLeft;
  PImage balloonsRight;
  int balloonRX, balloonRY, balloonLX, balloonLY;
  
  Balloons() {
    //load in balloon images
    balloonsLeft = loadImage("balloonsLeft.png");
    balloonsRight = loadImage("balloonsRight.png");
    
    balloonRX = 1200;
    balloonRY = 500;
    balloonLX = 200;
    balloonLY = 550;
  }

  void display() {
    scale(0.6, 0.6);
    tint(255, 126);
    image(balloonsLeft, balloonLX, balloonLY);
    image(balloonsRight, balloonRX, balloonRY);
    scale(1.67, 1.67);
  }
}
