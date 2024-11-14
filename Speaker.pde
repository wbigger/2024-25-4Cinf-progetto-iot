import processing.sound.*;

class Speaker {
  private boolean isAcceso;
  private boolean isPaused;
  private int volume; // da 0 a 100
  private String traccia;
  private SoundFile file;
  private Sound s;
  private PApplet app;

  public Speaker(PApplet app) {
    this.app = app;
    this.s = new Sound(app);
    this.isAcceso=false;
    this.isPaused=true;
    this.volume = 30;
  }

  public void accendi() {
    this.isAcceso=true;
  }
  public void spegni() {
    this.isAcceso=false;
  }

  public void setTraccia(String traccia) {
    this.traccia = traccia;
    this.file = new SoundFile(this.app, this.traccia);
  }

  public void riproduci() {
    this.isAcceso = true;
    this.isPaused = false;
    this.file.play();
  }

  public void mettiPausa() {
    this.isPaused = true;
    this.file.pause();
  }

  public boolean getIsPaused() {
    return this.isPaused;
  }
  public void aumentaVolume() {
    this.volume += 10;
  }
  public void diminuisciVolume() {
    this.volume -=10;
  }

  public void update() {
    if (this.isAcceso) {
      fill(0, 255, 0);
      if (this.isPaused) {
        fill(0, 180, 0);
      }
    } else {
      fill(0, 0, 0);
    }
    rect(200, 280, 150, 100);
 
    Sound.volume(this.volume/100.0f);
  }
}
