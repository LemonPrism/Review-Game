void keyPressed() {
  if (keyProcessed=true) {
    if (keyCode == LEFT) {
      h = max(h - 120, 230);
    } else if (keyCode == RIGHT) {
      h = min(h + 120, 470);
    }
    keyProcessed = true;
  }
  if ((mode == YOUWON) ||(mode == GAMEOVER)) {
    if ( (key == 'r' || key == 'R')) {
      collision = false;
      roadSpeed = 5;
      score = 0;
      h = 350;
      enemyY[0] = 400;
      enemyY[1] = 400;
      enemyScale[0] = 0.1;
      enemyScale[1] = 0.1;
      enemyX[0] = laneX[int(random(3))];
      enemyX[1] = laneX[int(random(3))];
      mode = MENU;
    }
  }
}
void keyReleased() {

  keyProcessed = false;
}
