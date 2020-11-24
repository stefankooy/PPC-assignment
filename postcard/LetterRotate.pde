//Class LetterRotate. Child class of class Letter. Makes a third of the letters rotate.

class LetterRotate extends Letter {

  float angle;
  float rotateSpeed;

  LetterRotate(char c) {
    super(c);
    rotateSpeed = 0.01;
    angle = 0;
  }

  void display(float xpos) {
    angle += rotateSpeed;

    pushMatrix();
    fill(textColor);
    textSize(textSize);
    translate(xpos+0.5*textWidth(c2), ypos-20);
    rotate(angle);
    translate(-0.5*textWidth(c2), 20);
    text(c2, 0, 0);
    popMatrix();

    if (angle > 0.1*PI || angle < -0.1*PI) {
      rotateSpeed = rotateSpeed * -1;
    }
  }
}
