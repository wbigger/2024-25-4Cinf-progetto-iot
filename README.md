# 4Cinf progetto IoT

Progetto con il prof. Capobianco di Informatica, a.s. 2024/25.

## Classe Lampada
```mermaid
classDiagram
    class Lampada {
        -boolean isAcceso
        -int red
        -int green
        -int blue
        -int coordX
        -int coordY
        +getIsAcceso()
        +setCoordXY(x, y)
        +getCoordX()
        +getCoordY()
        +accendi()
        +spegni()
        +setLuminosita(lum)
        +aumentaLuminosita()
        +diminuisciLuminosita()
        +update()
    }
```

La luminosità va da 0 a 100. In questo primo esempio, per luminosità 0, tutti i valori RGB devono essere a 0, per luminosità 100 tutti i valori devono essere a 100.

Esempio:

- setLuminosita(0)  -> red: 0, green: 0, blue:0 -> fill(0,0,0)
- setLuminosita(50)  -> red: 50, green: 50, blue:50 -> fill(128,128,128)
- setLuminosita(100)  -> red: 100, green: 100, blue:100 -> fill(255,255,255)

## Classe Speaker

```mermaid
classDiagram
    class Speaker {
        -boolean isAcceso
        -boolean isPaused
        -int volume
        -String traccia
        -SoundFile file
        -Sound s
        -PApplet app
        +accendi()
        +spegni()
        +setTraccia(traccia)
        +riproduci()
        +mettiPausa()
        +getIsPaused()
        +aumentaVolume()
        +diminuisciVolume()
        +update()
    }
```

Il volume va da 0 (nessun suono) a 100 (massimo volume).

Per riprodurre il suono con processing, vedi la [libreria dedicata](https://processing.org/reference/libraries/sound/SoundFile_play_.html).


## Classe LampadaSpeaker

Partendo da una Lampada, aggiungo la funzionalità di speaker e ne cambio la visualizzazione a schermo.

```mermaid
classDiagram
    class LampadaSpeaker {
        -boolean isAcceso
        -int red
        -int green
        -int blue
        -int coordX
        -int coordY
        +getIsAcceso()
        +setCoordXY(x, y)
        +getCoordX()
        +getCoordY()
        +accendi()
        +spegni()
        +setLuminosita(lum)
        +aumentaLuminosita()
        +diminuisciLuminosita()
        +update()
    }
    
```
```mermaid
classDiagram
    class Lampada {
        
    }
    class Speaker {
        
    }
    class LampadaSpeaker {
        
    }
    
    Lampada <|-- LampadaSpeaker
    LampadaSpeaker o-- Speaker
```
