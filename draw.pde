void draw_charactor(int x, int y, float rot){
  fill(255,55,50);
  ellipse(x,y,32,32);
  fill(200,200,200);
  ellipse(x+cos(rot-0.3)*20,y+sin(rot-0.3)*20,8,8);
  ellipse(x+cos(rot+0.3)*20,y+sin(rot+0.3)*20,8,8);
  


}

void ememy_Draw(){
  for (int i = 0 ; i < Enemies.length; i++){
<<<<<<< HEAD
    if(Enemies[i].img == ratImg){
      imagerotation(Enemies[i].posX,Enemies[i].posY);
      image(ratImg, Enemies[i].posX-rel_x, Enemies[i].posY-rel_y);
    }
  }
}


void Hud_Draw(){
  //tegner hp
  fill(0,0,0);
  rect(0,0,128,10); 
  fill(255-255*(float(hp)/100),255*(float(hp)/100),0);
  rect(0,0,(float(hp)/100)*128,10); 
  
  //tegner mp
  fill(0,0,0);
  rect(0,10,128,10); 
  fill(0,0,255);
  rect(0,10,(float(mp)/100)*128,10);  
}


void fog_Draw(){
  for (int i = 0 ; i < Invisible_Area.length; i++){
    fill(0,0,0);
    rect(Invisible_Area[i].x_pos-rel_x,Invisible_Area[i].y_pos-rel_y,64,64); 
  }
}
=======
    Enemies[i].update();
  }
}
>>>>>>> Enemy
