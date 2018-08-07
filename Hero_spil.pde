//declaring variables
int x = 100;
int y = 100;
float rot = PI;

boolean[] keys;

Bullets [] BulletsArray;

    //Bane variabler
int bane_x_length = 800;
int bane_y_length = 800;

Bane_Objekter [] Objekter_paa_banen;



void setup(){  
    //Laver arrayes
  Objekter_paa_banen = new Bane_Objekter[0];
  BulletsArray = new Bullets[0];
  
  
  Bane_Creater();
  
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
  
  
  //draw
  draw_charactor(x,y,rot);
  Bane_Draw();
  
  
};