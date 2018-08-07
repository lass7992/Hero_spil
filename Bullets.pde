class Bullets{
  float x_pos, y_pos, Direction, Speed;
  
  Bullets(int x, int y, float dir, int speed){
    x_pos = x;
    y_pos = y;
    Direction = dir;
    Speed = speed;
    
  }

}


void Bullet_Controller(){
  movement_bullets();  
  draw_bullets();
}



void draw_bullets(){
  for(int i = 0; i<BulletsArray.length;i++){
    fill(100,50,200);
    ellipse(BulletsArray[i].x_pos,BulletsArray[i].y_pos,8,8);
  }
  
}

void movement_bullets(){
  for(int i = 0; i<BulletsArray.length;i++){
  
    BulletsArray[i].x_pos += cos(BulletsArray[i].Direction)*BulletsArray[i].Speed;
    BulletsArray[i].y_pos += sin(BulletsArray[i].Direction)*BulletsArray[i].Speed;
  }
  
}


void mousePressed(){
  BulletsArray = (Bullets[])append(BulletsArray, new Bullets(x ,y ,rot ,8));
}