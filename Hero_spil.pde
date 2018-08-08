//declaring variables
int x = 100;
int y = 100;
int rel_x = 0;
int rel_y = 0;
float rot = PI;
int hp = 100;
int mp = 100;

boolean[] keys;

Bullets [] BulletsArray;

    //Bane variabler
int bane_x_length = 800;
int bane_y_length = 800;
int screen_x = 642;
int screen_y = 700;

Bane_Objekter [] Objekter_paa_banen;



void setup(){  
    //Laver arrayes
  Objekter_paa_banen = new Bane_Objekter[0];
  BulletsArray = new Bullets[0];
  
  
  Bane_Creater();
  
  size(10,10);
  surface.setSize(screen_x, screen_y);
  background(color(200,200,200));
  frameRate(60);
  
  keys=new boolean[4];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;
}



void draw(){
  background(color(40,200,10));
    
  
  // controllers
  screen_mover();
  MovementChecker();
  Bullet_Controller();
  PlayerRotation();
  
  
  //draw
  draw_charactor(x,y,rot);
  Bane_Draw();
  Hud_Draw();
  
  
};