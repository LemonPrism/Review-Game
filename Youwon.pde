void youwon() {


  background ( black);
  fill ( white);
  textSize( 100);
  text( "YOU WON", 200, 200);


  fill ( black);
  rect( 250, 500, 300, 100);

  fill ( white);
  textSize( 30);
  text("Press 'R' to Restart", 250, 400);


  if ( mode== YOUWON) {
    yay.play();
  }
  song.pause();
}

void youwonClicks() {
}
