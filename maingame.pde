

int h;
float roadSpeed, roadY; 
void maingame() {


  ///////////////background setting///////////////////////
  background(fgreen);

  fill(   #5f5f5f);
  stroke ( black);
  strokeWeight( 3);

  triangle (150, 800, 400, 400, 650, 800);
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

  car(h, 700);

int i;
float s;
s = 0.1;
i = 400;
while (i < 900) {
    i = i + 100;
    s = s + 0.3;
    roadline(400, i, s);
    if (i > 900) {
        i = 400;
       s= 0.1; 
    }
}


  
  
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

  text ( "taxi", 43, - 30);



  fill ( byellow);
  strokeWeight( 3);
  stroke( black);

  rect (0, 0, 100, 30, 28);



  popMatrix();
}



void roadline(int x, int y, float s) {
  pushMatrix();
  translate(x, y); 
  scale(s);
  noStroke();
  fill(white);

 
  quad(-65, 0,   -45, -50,   -35, -50,  -55, 0);  

  
  quad(65, 0, 45, -50, 35, -50, 55, 0);

  popMatrix();
}
