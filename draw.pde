void draw_charactor(int x, int y, float rot){
  fill(255,55,50);
  ellipse(x,y,32,32);
  fill(200,200,200);
  ellipse(x+cos(rot-0.3)*20,y+sin(rot-0.3)*20,8,8);
  ellipse(x+cos(rot+0.3)*20,y+sin(rot+0.3)*20,8,8);
  


}

void ememy_Draw(){
  for (int i = 0 ; i < Enemies.length; i++){
    if(Enemies[i].img == ratImg){
      image(ratImg, Enemies[i].posX-rel_x, Enemies[i].posY-rel_y);
    }
  }
}