// Global variables
int h = 350;          


void maingame() {
  ///////////////background setting///////////////////////
  background(fgreen);

  fill(#5f5f5f);        
  stroke(black);
  strokeWeight(3);
  triangle(150, 800, 400, 400, 650, 800);
  noStroke();
  fill(lblue);          
  rect(0, 0, width, 400);

  /////////////////mountains////////////////////////
  fill(#b3b3b3);      
  noStroke();
  triangle(0, 400, 200, 100, 500, 400);
  triangle(-200, 400, 0, 100, 300, 400);
  triangle(400, 400, 700, 100, 900, 400);
  triangle(200, 400, 500, 100, 700, 400);


  
  
  
  
    for (int i = 0; i < 2; i++) {
    enemyScale[i] = map(enemyY[i], 400, 800, 0.1, 1.0); 
    enemyCar(enemyX[i], int(enemyY[i]), enemyScale[i], enemyWidth[i]);
    
    if (!collision) {
      enemyY[i] += roadSpeed; 
    }
    
   
    if (enemyY[i] > 900) {
      enemyX[i] = laneX[int(random(3))];
      enemyY[i] = 400;
      enemyScale[i] = 0.1;
      if (!collision) score += 10; 
    }
    
   
    if (collisionDetected(h, 700, enemyX[i], enemyY[i], enemyScale[i], enemyWidth[i])) {
      collision = true;
      roadSpeed = 0;
    }
  }

  car(h, 700);         

  ///////////lanes - Moving Road Lines//////////////////////////////
  strokeWeight(5);
  stroke(white);

  // Update roadY to move lines downward
 if (!collision) roadY += roadSpeed;

  float s = 0.1;       
  for (int i = 0; i < 7; i++) { 
    float currentY = roadY + (i * 70); 
    if (currentY > 900) { 
      currentY -= 480;    
    }
    
    if (currentY >= 400 && currentY <= 900) {
     
      float dynamicScale = map(currentY, 400, 800, s, 1.5); 
      roadline(400, int(currentY), dynamicScale);
    }
  }

  
  if (roadY > 900) {    
    roadY = 400;       
  }
  if (roadY > 900) roadY = 400;

 
  if (collision) {
    mode= GAMEOVER; 
  }
  
  
  if (!collision) score += 1;
}

void maingameClicks() {
  
}

void car(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(black);
  noStroke();
  circle(20, 30, 20);   
  circle(80, 30, 20);   

  fill(byellow);
  strokeWeight(3);
  stroke(black);
  rect(40, -50, 20, 20, 50); 
  fill(lblue);
  strokeWeight(3);
  stroke(black);
  rect(10, -40, 80, 60, 50); 

  textSize(10);
  fill(black);
  text("taxi", 43, -30);    

  fill(byellow);
  strokeWeight(3);
  stroke(black);
  rect(0, 0, 100, 30, 28);   

  popMatrix();
}

void roadline(int x, int y, float s) {
  pushMatrix();
  translate(x, y); 
  scale(s);            
  noStroke();
  fill(white);

  // Draw quads as road lines
  quad(-65, 0, -45, -50, -35, -50, -55, 0);  
  quad(65, 0, 45, -50, 35, -50, 55, 0);      

  popMatrix();
}


void enemyCar(int x, int y, float s, int width) {
  pushMatrix();
  translate(x - (width * s) / 2, y); 
  scale(s);
  fill(red);
  stroke(black);
  strokeWeight(2);
  rect(0, 0, width, 40);
  popMatrix();
}

boolean collisionDetected(int taxiX, int taxiY, float enemyX, float enemyY, float enemyScale, int enemyWidth) {
  int taxiWidth = 100;
  int taxiHeight = 80;
  int taxiLeft = taxiX;
  int taxiRight = taxiX + taxiWidth;
  int taxiTop = taxiY - 50;
  int taxiBottom = taxiY + 30;

  int enemyW = int(enemyWidth * enemyScale);
  int enemyH = int(40 * enemyScale);
  int enemyLeft = int(enemyX - (enemyWidth * enemyScale) / 2);
  int enemyRight = int(enemyX + (enemyWidth * enemyScale) / 2);
  int enemyTop = int(enemyY);
  int enemyBottom = int(enemyY) + enemyH;

  return (taxiLeft < enemyRight && 
          taxiRight > enemyLeft && 
          taxiTop < enemyBottom && 
          taxiBottom > enemyTop);
}
