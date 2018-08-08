class Bullets{
  float x_pos, y_pos, Direction, Speed;
  
  Bullets(int x, int y, float dir, int speed){
    x_pos = x+rel_x ;
    y_pos = y+rel_y;
    Direction = dir;
    Speed = speed;
    
  }
  
  boolean collision_detection(){
    boolean able = true;
   
    for (int i = 0 ; i < Objekter_paa_banen.length; i++){
      if (x_pos > Objekter_paa_banen[i].x_pos  && x_pos < Objekter_paa_banen[i].x_pos +64 && y_pos > Objekter_paa_banen[i].y_pos && y_pos < Objekter_paa_banen[i].y_pos +64 && Objekter_paa_banen[i].Solid == true){
        able = false;
      }
      
    }
    
    
    return(able);
  }

}


void Bullet_Controller(){
  movement_bullets();  
  draw_bullets();
}



void draw_bullets(){
  for(int i = 0; i<BulletsArray.length;i++){
    fill(100,50,200);
    ellipse(BulletsArray[i].x_pos-rel_x ,BulletsArray[i].y_pos-rel_y ,8,8);
  }
  
}

void movement_bullets(){
  for(int i = 0; i<BulletsArray.length;i++){
    if(BulletsArray[i].collision_detection() == false) {  BulletsArray = (Bullets[])concat(subset(BulletsArray,0,i),subset(BulletsArray,i+1,BulletsArray.length-i-1)); }
    else{
      BulletsArray[i].x_pos += cos(BulletsArray[i].Direction)*BulletsArray[i].Speed;
      BulletsArray[i].y_pos += sin(BulletsArray[i].Direction)*BulletsArray[i].Speed;
    }
  }
  
}


void mousePressed(){
  BulletsArray = (Bullets[])append(BulletsArray, new Bullets(x ,y ,rot ,8));
}