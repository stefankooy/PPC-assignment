//Class LetterBob
class LetterBob extends Letter {
  float bobYpos;
  float direction;

  LetterBob(char c) {
    super(c);
    bobYpos = randomPos();
    direction = 0.3;
    ypos = ypos + bobYpos;
  }

  void display(float xpos) {
    ypos = ypos + direction;

    //change direction so letters bob up and down
    if (ypos > 135 || ypos < 125) {
      direction = direction * -1;
    }

    fill(textColor);
    textSize(textSize);

    text(c2, xpos, ypos);
  }

  int randomPos() {
    return int(random(-5, 5));
  }
}
