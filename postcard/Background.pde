//this class displays our background, which is a gradient.

PImage wallpaper;
color c;
float x;
float y;

class Background {
  Background() {
    loadPixels();      //get access to the pixels
    wallpaper = loadImage("wallpaper.jpg");
    
  }

  void display() {
    
    for (int i = 0; i < 100; i++) {
      x = mouseX;
      y = mouseY;
      c = wallpaper.get(int(x), int(y));
      fill(c, 10);
      noStroke();
      ellipse(x, y, 200, 200);
    }
  }
}
