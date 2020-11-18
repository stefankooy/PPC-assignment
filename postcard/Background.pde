//this class displays our background, which is a gradient.

class Background {

  Background() {
    loadPixels();      //get access to the pixels
  }

  void display() {

    //loop through each pixel on the screen
    for (int i=0; i < pixels.length; i++) {

      //creates a color behaviour of each pixel in regards to the distance of the mouse
      color c  = color(255, 255, (255-100*dist(mouseX, mouseY, i%width, i/width)/width));

      //assigns color to the pixels
      pixels[i]=c;
    };

    updatePixels();      //updating the new colors of each pixel
  }
}
