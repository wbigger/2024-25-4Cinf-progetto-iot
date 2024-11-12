class Lampada {
  private boolean isAcceso;
  private int red;
  private int green;
  private int blue;
  private int coordX;
  private int coordY;
  
  public Lampada() {
    this.coordX = 200;
    this.coordY = 200;
  }
  
  public void setCoordXY(int x, int y) {
    this.coordX = x;
    this.coordY = y;
  }
  
  public int getCoordX() {
    return this.coordX;
  }
  public int getCoordY() {
    return this.coordY;
  }

  public void accendi() {
    this.isAcceso = true;
  }

  public void spegni() {
    this.isAcceso = false;
  }
  
  public void setLuminosita(int lum) {
    this.red = lum;
    this.green = lum;
    this.blue = lum;
  }
  
  public void aumentaLuminosita() {
    this.red += 10;
    this.green += 10;
    this.blue += 10;
  }
  
  public void diminuisciLuminosita() {
    this.red -= 10;
    this.green -= 10;
    this.blue -= 10;
  }
  
  
  public void update() {
    if (this.isAcceso) {
      fill(this.red*255/100,this.green*255/100,this.blue*255/100);
    } else {
      fill(0,0,0);
    }
    circle(this.coordX,this.coordY,100);
  }
}
