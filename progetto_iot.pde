
Lampada lampada = new Lampada();
Speaker speaker = new Speaker(this);
LampadaSpeaker lampSpeak = new LampadaSpeaker();

// Da fare insieme in classe
//public static void main(String args[]) {
//  PApplet.main("progetto_iot");
//  System.out.println("CIAO!");
//}
void setup() {
  size(400,400);
  frameRate(30);
  lampada.accendi();
  lampSpeak.setCoordXY(300,100);
  //lampSpeak.accendi();
  
  if (pmouseX != mouseX) {
    lampada.setLuminosita(mouseX*100/400);
  }
  
  speaker.accendi();
  speaker.setTraccia("I love my school.mp3");

}

void draw() {
  background(0,0,255);
  
  if (pmouseX != mouseX) { 
    lampada.setLuminosita(mouseX*100/400);
  }
  
  lampada.update(); // sempre l'ultima riga
  speaker.update();
  lampSpeak.update();
}

void keyPressed() {
  if (key == '+') {
    lampada.aumentaLuminosita();
  } else if (key == '-') {
    lampada.diminuisciLuminosita();
  } else if (key == ' ') {
    if (speaker.getIsPaused()) {
      speaker.riproduci();
    } else {
      speaker.mettiPausa();
    }
  } else if (key == 'p') {
    speaker.aumentaVolume();
  } else if (key == 'm') {
    speaker.diminuisciVolume();
  } else if (key == 'l') {
    if (lampSpeak.getIsAcceso()) {
      lampSpeak.spegni();
    } else {
      lampSpeak.accendi();
    }
  }
}
