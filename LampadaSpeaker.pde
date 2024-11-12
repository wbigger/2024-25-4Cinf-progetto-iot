class LampadaSpeaker extends Lampada {
  
  @Override public void update() {
    fill(255,0,0);
    circle(this.getCoordX(),this.getCoordY(),120);
  }
}
