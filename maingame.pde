
int h; 

void maingame() {


  ///////////////background setting///////////////////////
  background(fgreen);

  fill(   #5f5f5f);
  stroke ( black);
  strokeWeight( 3);

  triangle (150, height, 400, 400, 650, height);
  noStroke();
  fill (lblue);
  rect ( 0, 0, width, 400);


  /////////////////mountains////////////////////////
  fill (#b3b3b3);
  noStroke();
  triangle ( 0, 400, 200, 100, 500, 400);
  triangle ( -200, 400, 0, 100, 300, 400);
  triangle ( 400, 400, 700, 100, 900, 400);
  triangle ( 200, 400, 500, 100, 700, 400);

  ///////////lanes//////////////////////////////////////////////////
  strokeWeight( 5);
  stroke ( white);
  /////////////scoreboard///////////////////////////////////////////////
  textSize ( 50);
  fill(black);
  text(score, 750, 50);

  ////////////////car design///////////////////////////////////////////
  
  if (keyCode== LEFT){
    
  h = h-10; 
  
  } 
  if (keyCode== RIGHT){
    
   h = h+10;  
    
  }
    car(h, 700);
}

void maingameClicks() {
}


void car(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill ( black);
  noStroke();
  circle ( 20, 30, 20);
  circle (80, 30, 20);
  
   fill( byellow);
  strokeWeight(3);
  stroke ( black);
  rect(40, -50, 20, 20, 50);
  fill( lblue);
  strokeWeight(3);
  stroke ( black);
  rect(10, - 40, 80, 60, 50);
  
  
  
  textSize(10); 
  fill( black); 
  
  text ( "taxi", 43 , - 30); 



  fill ( byellow);
  strokeWeight( 3);
  stroke( black);

  rect (0, 0, 100, 30, 28);



  popMatrix();
}
