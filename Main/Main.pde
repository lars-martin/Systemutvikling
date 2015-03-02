// Need G4P library
import g4p_controls.*;

int ranw = (int) random(200);

PGraphics mainSketch;


public void setup(){
  size(1300, 700, JAVA2D);
  createGUI();
  customGUI();
  mainSketch = createGraphics(width-width/5,height-height/9);
  // Place your setup code here
  rectMode(CENTER);
  
}

public void draw(){
  
int ranw = (int) random(500);
  background(180);
  //fill(255, 0, 100);
 // rect(mouseX, mouseY, 100, 100);
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
public void customGUI(){

}
