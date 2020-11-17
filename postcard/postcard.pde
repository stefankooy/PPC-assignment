/* 
 Assignment 1 - Animated Greeting Card
 Issa Margherita, Natsuki Collin, Gijsje Aarts, Stefan Kooy 
 
 This is a birthday card. The user can input any text into the text file, and the words will 
 display as colorful and differently sized letters that bob up and down. The card contains 
 balloons and confetti. 
*/

Text text;
Balloons balloons;
Confetti[] confettis = new Confetti[500];

void setup() {
  size(1120, 700);
  text = new Text();

  for (int i = 0; i < confettis.length; i++) {
    confettis[i] = new Confetti(random(0, width), random(1, 2), random(50, 255), random(20, 220), random(20, 220));
  }
  balloons = new Balloons();
}

void draw() {
  background(255, 255, 220);

  //display confetti
  for (int i = 0; i<confettis.length; i++) {
    confettis[i].display();
  }

  //display balloon images and text
  balloons.display();            
  text.display();
}
