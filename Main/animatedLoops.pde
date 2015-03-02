class animatedLoops {
  int frames = 20;
  PGraphics pg[] = new PGraphics[frames];
  public boolean prepareState = false;

  animatedLoops() {
    //prepareDraw();
  }


  void prepareDraw() {
    for (int i=0; i<frames; i++) {
      pg[i] = createGraphics(mainSketch.width, mainSketch.height);
      pg[i].beginDraw();
      pg[i].background(0);
      pg[i].stroke(255);
      pg[i].strokeWeight(3);
      pg[i].endDraw();
    }
    prepareState = true;
  }
  void drawing() {
    int currFrame = frameCount % frames; // 0 .. 19
    if (mousePressed) {
      pg[currFrame].beginDraw();
      pg[currFrame].line(mouseX-width/5+10, mouseY-10, pmouseX-width/5+10, pmouseY-10);
      pg[currFrame].endDraw();
    }
    image(pg[currFrame], width-mainSketch.width-10, 10);
  }
}
