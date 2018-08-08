void PlayerRotation(){
  float kat =  mouseX - x;
  float hyp = sqrt(pow(mouseX-x,2)+pow(mouseY-y,2));
  
  if(mouseY > y){
    rot = acos(kat/hyp);
  }else{
    rot = -acos(kat/hyp)+PI*2;
  }
}

boolean Colission_Hero(int dir){
  boolean able = true;
  if(dir == 0){
    for (int i = 0 ; i < Objekter_paa_banen.length; i++){
      if (Objekter_paa_banen[i].x_pos-rel_x < x-19  && Objekter_paa_banen[i].x_pos-rel_x+64 > x-19 && y+16 > Objekter_paa_banen[i].y_pos-rel_y && y-16 < Objekter_paa_banen[i].y_pos-rel_y+64  && Objekter_paa_banen[i].Solid == true){
        able = false;
      }
      
    }
  }
  if(dir == 1){
    for (int i = 0 ; i < Objekter_paa_banen.length; i++){
      if (Objekter_paa_banen[i].y_pos-rel_y < y+19  && Objekter_paa_banen[i].y_pos-rel_y+64 > y+19 && x+16 > Objekter_paa_banen[i].x_pos-rel_x && x-16 < Objekter_paa_banen[i].x_pos-rel_x+64 && Objekter_paa_banen[i].Solid == true){
        able = false;
      }
      
    }
  }
  if(dir == 2){
    for (int i = 0 ; i < Objekter_paa_banen.length; i++){
      if (Objekter_paa_banen[i].y_pos-rel_y < y-19  && Objekter_paa_banen[i].y_pos-rel_y+64 > y-19 && x+16 > Objekter_paa_banen[i].x_pos-rel_x && x-16 < Objekter_paa_banen[i].x_pos-rel_x+64 && Objekter_paa_banen[i].Solid == true){
        able = false;
      }
      
    }
  }
  if(dir == 3){
    for (int i = 0 ; i < Objekter_paa_banen.length; i++){
      if (Objekter_paa_banen[i].x_pos-rel_x < x+19  && Objekter_paa_banen[i].x_pos-rel_x+64 > x+19 && y+16 > Objekter_paa_banen[i].y_pos-rel_y && y-16 < Objekter_paa_banen[i].y_pos-rel_y+64 && Objekter_paa_banen[i].Solid == true){
        able = false;
      }
      
    }
  }
  
  
  return(able);
}


void MovementChecker(){
  if( keys[0]) 
  {  
    if (Colission_Hero(0) == true){
      x -= 3;
    }
  }
  if( keys[1]) 
  {
    if (Colission_Hero(1) == true){
      y += 3;
    }
  }
  if( keys[2]) 
  {  
    if (Colission_Hero(2) == true){
      y -= 3;
    }
  }
  if( keys[3]) 
  {
    if (Colission_Hero(3) == true){
      x += 3;
    }
  }
}

void keyPressed(){
  if(key=='a')
    keys[0]=true;
  if(key=='s')
    keys[1]=true;
  if(key=='w')
    keys[2]=true;
  if(key=='d')
    keys[3]=true;
}
void keyReleased(){
    if(key=='a')
      keys[0]=false;
    if(key=='s')
      keys[1]=false;
    if(key=='w')
      keys[2]=false;
    if(key=='d')
      keys[3]=false;
}