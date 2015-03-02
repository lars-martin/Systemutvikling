// Need G4P library
import g4p_controls.*;
int state = 0;

PGraphics mainSketch;

animatedLoops aloop = new animatedLoops();
/*
PGraphics, HVA ER DETTE?!:
 Dette er en måte å lage lag(layers).
 Èn PGgraphics element er ett lag. 
 For å tegne på layeren:
 Hvis layeren heter mainSketch, må du  
 skrive
 mainSketch.beginDraw(); for å begynne å tegne
 du bruker vanlige funksjoner, du må bare skrive navnet
 på layeren før du tegner.
 Mao: mainSketch.rect(100, 100, 100, 200); osv.
 
 Når du er ferdig å tegne, må du bruke
 image(mainSketch, xpos, ypos); Dette gjør at layeren faktisk vises på skjermen.
 
 
 
 TLDR Version:
 PGraphics laga ny layer
 bruk navnet på layeren for å tegne. f.eks mainSketch.
 du må ha mainSketch.BeginDraw(); før du begynner, og mainSketch.endDraw() på slutten.
 Så image(mainSketch, xpos, ypos);
 */


public void setup() {
  size(1300, 700, JAVA2D);
  createGUI();
  customGUI();
  mainSketch = createGraphics(width-width/5, height-height/9);
  // Place your setup code here
  rectMode(CENTER);
}

public void draw() {
  background(180);
  switch(state) {
  case 1:
    drawRandomRects(); 
    break;

  case 2:
    if (aloop.prepareState != true)
      aloop.prepareDraw();
    aloop.drawing();
    break;
  }
}

void drawRandomRects() {
  int ranw = (int) random(500);
  mainSketch.beginDraw();
  //mainSketch.background(0);
  mainSketch.noStroke();
  mainSketch.rect(mouseX-width/5, mouseY, 100, 100);
  mainSketch.fill(180, 20);
  mainSketch.rect(0, 0, width, height);
  mainSketch.fill(random(255), random(255), random(255));
  mainSketch.rect(random(mainSketch.width), random(mainSketch.height), ranw, ranw);
  mainSketch.endDraw();
  image(mainSketch, width-mainSketch.width-10, 10);
}
// Use this method to add additional statements
// to customise the GUI controls
public void customGUI() {
}
