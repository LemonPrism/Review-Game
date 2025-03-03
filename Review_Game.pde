
color white = #ffffff;
color black = #000000;
color lblue = #A8CCC9;
color tgreen= #DCEAB2;
color agray = #B3D6C6;
color turq = #75B9BE;
color nblue=#000068;
color gblue= #6082B6;
color dblue= #000053;
color sblue= #4682B4;
color byellow= #ffea00;
color fgreen= #4F7942;
color red = #FF0000;     
int mode;
final int MENU=0;
final int MAINGAME=1;
final int GAMEOVER=2;
final int YOUWON = 3;

boolean left, right;

boolean keyProcessed = false;


PImage[] gif;
int nOfFrames;
int f;

//score
int score;
float roadSpeed;    
float roadY; 
boolean collision = false; 

int[] enemyX = new int[2]; 
float[] enemyY = {400, 400}; 
float[] enemyScale = {0.1, 0.1}; 
int[] enemyWidth = {75, 100}; 

// Lane centers
int[] laneX = {250, 400, 550}; 

void setup () {
roadSpeed = 5;         
  roadY = 400; 
  h = 350;

enemyX[0] = laneX[int(random(3))]; 
  enemyX[1] = laneX[int(random(3))]; 
  nOfFrames= 34;
  gif = new PImage[nOfFrames];

  int i = 0;
  while (i < nOfFrames ) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i=i+1;
  }


  size ( 800, 800);
  mode = MENU;

  right=false;
  left = false;
}


void draw () {
  if (mode==MENU) {

    menu();
  } else if ( mode ==MAINGAME) {



    maingame();
  } else if ( mode == GAMEOVER) {


    gameover();
  } else if ( mode == YOUWON) {


    youwon();
  }
}
