
// Composizione, lo speaker lo crea la lampada
//LampadaSpeaker lampSpeak = new LampadaSpeaker(this);

// Aggregazione, lo speaker lo creo prima o poi lo passo
Speaker speaker = new Speaker(this);
LampadaSpeaker lampSpeak = new LampadaSpeaker(speaker);

void setup() {
  size(400,400);
  frameRate(30);
  lampSpeak.setCoordXY(300,100);
  lampSpeak.accendi();
  lampSpeak.speaker.accendi();
  lampSpeak.speaker.setTraccia("I love my school.mp3");
}

void draw() {
  background(0,0,255);
  
  lampSpeak.update();
}

void keyPressed() {
  // Gestione Speaker
  if (key == ' ') {
    if (lampSpeak.speaker.getIsPaused()) {
      lampSpeak.speaker.riproduci();
    } else {
      lampSpeak.speaker.mettiPausa();
    }
  } else if (key == 'p') {
    lampSpeak.speaker.aumentaVolume();
  } else if (key == 'm') {
    lampSpeak.speaker.diminuisciVolume();
  }
  
  // Gestione lampada
  if (key == 'l') {
    if (lampSpeak.getIsAcceso()) {
      lampSpeak.spegni();
    } else {
      lampSpeak.accendi();
    }
  }
}
