//this class loads in png images of the balloons and gives it a scale and position.

class Balloons {
  PImage balloonsLeft;
  PImage balloonsRight;
  int balloonRX, balloonRY, balloonLX, balloonLY;
  
  Balloons() {
    //load in balloon images
    balloonsLeft = loadImage("balloonsLeft.png");
    balloonsRight = loadImage("balloonsRight.png");
    
    //balloon positions
    balloonRX = 1200;
    balloonRY = 520;
    balloonLX = 200;
    balloonLY = 520;
  }

  void display() {
    //scale the balloons down
    scale(0.6, 0.6);
    
    //change opacity of the balloons slightly
    tint(255, 200);
    
    //display the images
    image(balloonsLeft, balloonLX, balloonLY);
    image(balloonsRight, balloonRX, balloonRY);
    
    scale(1.67, 1.67);
  }
}
