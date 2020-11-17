class LetterShrink extends Letter {

  int textShrinkSize;

  LetterShrink(char c) {
    super(c);
    textShrinkSize = int(random(60, 100));
  }

  void display(float xpos) {


    fill(textColor);
    textSize(textShrinkSize);

    text(c2, xpos, ypos);
  }
}
