class LetterBob extends Letter {
  float bobYpos;
  float direction;

  LetterBob(char c) {
    super(c);
    bobYpos = randomPos();
    direction = 0.3;
  }

  void display(float xpos) {
    text(c2, xpos, ypos + bobYpos);
    ypos = ypos + direction;
    
    //change direction so letters bob up and down
    if (ypos > 6 || ypos < -6) {
      direction = direction * -1;
    }
  }

  int randomPos() {
    return int(random(-5, 5));
  }
}
