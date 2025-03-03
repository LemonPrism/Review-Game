
void menu() {

  background (#ffea00);



  image ( gif[f], 0, 0, width, height);
  f=f+1;
  if ( f== nOfFrames) {
    f=0;
  }
  
  //song.pause(); 
  //failure.pause(); 
  //yay.pause(); 

  textSize(100);
  fill(random(255));
  text("TAXI RUSH", 170, 200 );



  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    fill(255);
  } else {
    fill(turq);
  }
  rect(300, 500, 200, 100);
}

void menuClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode= MAINGAME;
  }
}
