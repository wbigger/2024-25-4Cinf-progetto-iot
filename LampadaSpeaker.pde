class LampadaSpeaker extends Lampada {
  
  private Speaker speaker;
  
  // Composizione
  public LampadaSpeaker(PApplet app) {
    this.speaker = new Speaker(app);
  }
  
  // Aggregazione
  public LampadaSpeaker(Speaker speaker) {
    this.speaker = speaker;
  }
  
  @Override public void update() {
    noStroke();
    if (this.getIsAcceso()) {
      // Lampada accesa
      fill(50,130,246);
    } else {
      // Lampada spenta
      fill(0,12,123);
    }
    circle(this.getCoordX(),this.getCoordY(),120);
    
    if (this.speaker.isAcceso) {
      fill(0, 255, 0);
      if (this.speaker.isPaused) {
        fill(39,89,50);
      }
    } else {
      fill(117,250,141);
    }
    circle(this.getCoordX(),this.getCoordY(),70);

    Sound.volume(this.speaker.volume/100.0f);
    
    
  }
}
