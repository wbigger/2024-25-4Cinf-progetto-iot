class LampadaSpeaker extends Lampada {
  
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
     
    // Speaker acceso
    fill(117,250,141);
    circle(this.getCoordX(),this.getCoordY(),70);
  }
}
