//this class displays our background, which is a gradient.

PImage wallpaper;
color c;
float x;
float y;

class Background {
  Background() {
    //get access to the pixels
    loadPixels();
    
    //load in image
    wallpaper = loadImage("wallpaper.jpg");
  }

  void display() {
    for (int i = 0; i < 100; i++) {
      x = mouseX;
      y = mouseY;
      
      //return the color values of each pixel in the mouseX and mouseY position
      c = wallpaper.get(int(x), int(y));
      
      //asign each pixel the color c and give an opacity of 10
      fill(c, 10);
      noStroke();
      
      //assign the ellipse the mouseX and mouseY locations and give a diameter of 300
      ellipse(x, y, 300, 300);
    }
  }
}
