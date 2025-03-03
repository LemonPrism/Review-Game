
void gameover() {
  background (black);


  fill ( #FF0000);
  textSize( 100);
  text ( " GAME OVER", 150, 300);



  fill ( black);
  rect( 250, 500, 300, 100);

  textSize(30);
  fill(red);
  text("Collision! Press 'R' to Restart", 200, 400);
  song.pause(); 
  failure.play(); 
  
}

void gameoverClicks() {
}
