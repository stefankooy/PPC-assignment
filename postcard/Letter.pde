//The letter class is a class for each seperate character. gives each character a random starting position and assigns a random color to each character.

class Letter {
  color textColor;
  int red, green, blue;  //color ints
  char c2;
  int textSize;
  float ypos;

  Letter(char c) {
    c2 = c;
    textSize = int(random(60, 100));
    textColor = changeColor();
    ypos = 130;
  }

  void display(float xpos) {
    fill(textColor);
    textSize(textSize);
 
    text(c2, xpos, ypos);
  }

  color changeColor() {
    //Change  color to random
    int red = int(random(0, 255));
    int green = int(random(0, 255));
    int blue = int(random(0, 255));
    return color(red, green, blue);
  }
}
