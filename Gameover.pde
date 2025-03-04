
void gameover() {
  background (black);


  fill ( #FF0000);
  textSize( 100);
  text ( " GAME OVER", 150, 300);



  fill ( black);
  rect( 250, 500, 300, 100);

  textSize(30);
  fill(red);
  text("Collision! Press 'R' to Restart", 250, 400);
  text( "Score:", 350, 500);
  text (score, 450, 500);
  song.pause();
  if (mode== GAMEOVER) {
    failure.play();
  }
}

void gameoverClicks() {
}
