class LetterShrink extends Letter {

  float textStartSize, textShrinkSpeed;

  LetterShrink(char c) {
    super(c);
    textStartSize = int(random(40, 100));
    textShrinkSpeed = 1;
  }

  void display(float xpos) {
    
    textStartSize = textStartSize + textShrinkSpeed;
    
    if (textStartSize < 30 || textStartSize > 80) {
      textShrinkSpeed = textShrinkSpeed * -1;;
    }
      


    fill(textColor);
    textSize(textStartSize);
    text(c2, xpos, ypos);
  }
}
