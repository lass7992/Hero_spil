//declaring variables
int x = 100;
int y = 100;
int rel_x = 0;
int rel_y = 0;
float rot = PI;
int hp = 0;
int mp = 100;

boolean[] keys;



    //Game variabler
float time = 0;
float past_time = millis();

    //Bane variabler
int bane_x_length = 800;
int bane_y_length = 800;
int screen_x = 642;
int screen_y = 700;

  //Arrays
Bane_Objekter [] Objekter_paa_banen;
Enemy [] Enemies;
Bullets [] BulletsArray;
Vision [] Invisible_Area;



//Declaring images
  PImage ratImg;




void setup(){  

  
    //Declaring images
  //ratImg = loadImage("Rat_filler.png");
  imageloader();
  
    //Laver arrayes
  Objekter_paa_banen = new Bane_Objekter[0];
  BulletsArray = new Bullets[0];
  Enemies = new Enemy[0];
  Invisible_Area = new Vision[0];
  
    //generere en bane og derefter indlæser den den
  bane_generator();
  Bane_Creater("bane.txt"); //skriv navnet på filen der skal indlæses
  
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
  
  Time_Controllers();  
  
  
  
  //draw
  draw_charactor(x,y,rot);
  Bane_Draw();
  Hud_Draw();
  
  //lav denne rigtig
  ememy_Draw();
  
  
  //tegner fog
  fog_Collision();
  fog_Draw();
    
  
};
