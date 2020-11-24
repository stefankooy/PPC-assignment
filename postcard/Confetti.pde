//Class for creating confetti

class Confetti {
  float x, y, speed, gravity;
  color colorC;
  
  Confetti(float x_, float speedC, float r, float g, float b) {
    x = x_;
    y = random(-4000);
    speed = speedC;
    gravity = random(1, 4); 
    
    //randomised colors in confetti particles
    colorC = color(r, g, b);     
  }

  void display() {
    //when y is height-10 the confetti stops falling
    if (y < height-15) {   
      //speed times gravity gives gravity effect, because falling speed increases
      y = y + speed * gravity;
    }
    
    fill(colorC);
    noStroke(); 
    pushMatrix();
    translate(x, y);
    //confetti
    quad(0, 0, 5, -5, 10, 5, 2, 10);     
    popMatrix();
  }
}
