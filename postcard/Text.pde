//The text Class loads in text from the text file, and adds everything into one big string. Puts each individual letter into an array called 'sentence'.

class Text {
  String[] input;
  String text;
  PFont font;
  int letterXpos = 40;
  int[] randomIndex;

  Letter[] sentence;

  Text() {
    text = new String();

    //load in text from text.txt 
    input = loadStrings("text.txt");

    //store all text in one big string
    text = join(input, " ");

    sentence = new Letter[text.length()];

    //randomIndex = new int[(int)random(0, text.length())];
    //int rand = (int)random(randomIndex.length);

    for (int i = 0; i < text.length(); i++) {
      float r = random(0, 1);
      if (r >= 0 && r < 0.3333) {
        sentence[i] = new LetterBob(text.charAt(i));
      } else if (r > 0.3333 && r < 0.6667) {
        sentence[i] = new LetterShrink(text.charAt(i));
      } else {
        sentence[i] = new LetterRotate(text.charAt(i));
      }
    }

    //println(PFont.list());
    font = createFont("Trebuchet MS Bold", 60);
    textFont(font);
  }

  void display() {
    scale(1, 2);

    for (int i = 0; i < text.length(); i++) {
      char c = sentence[i].c2;
      sentence[i].display(letterXpos);
      letterXpos += textWidth(c);
    }

    letterXpos = 40;
    scale(1, 0.5);  
  }
}
