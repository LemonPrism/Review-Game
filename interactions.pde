void keyPressed() {
  if (keyProcessed=true) {
    if (keyCode == LEFT) {
      h = max(h - 120, 230);
    } else if (keyCode == RIGHT) {
      h = min(h + 120, 470);
    }
    keyProcessed = true;
  }
}
void keyReleased() {

  keyProcessed = false;
}
