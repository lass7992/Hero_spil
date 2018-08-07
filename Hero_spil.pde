//declaring variables
int x = 100;
int y = 100;
float rot = PI;

boolean[] keys;

Bullets [] BulletsArray;

    //Bane variabler
int bane_x_lenght = 0;
int bane_y_lenght = 0;

Objekter_på_banen [] Bane_Objekter;



void setup(){  
  Bane_Creater();


  BulletsArray = new Bullets[0];
  
  
  size(642,700);
  background(color(200,200,200));
  frameRate(60);
  
  keys=new boolean[4];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;
}



void draw(){
  background(color(40,250,10));
  
  MovementChecker();
  Bullet_Controller();
  
  
  
  PlayerRotation();
  draw_charactor(x,y,rot);

  
};