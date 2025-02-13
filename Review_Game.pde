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

int mode;
final int MENU=0;
final int MAINGAME=1;
final int GAMEOVER=2;
final int YOUWON = 3;


PImage[] gif; 
int nOfFrames; 
int f; 


void setup () {
nOfFrames= 34;
gif = new PImage[nOfFrames];

int i = 0; 
while (i < nOfFrames ){
  gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif"); 
 i=i+1;  
}


  size ( 800, 800);
  mode = MENU;
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
