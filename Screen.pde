void screen_mover(){
  println (rel_x);
  println( bane_x_length);
  if(x > (screen_x/2) && rel_x < bane_x_length){
    rel_x += x-(screen_x/2);
    x = (screen_x/2);
  }
  if(y > (screen_y/2) && rel_y < bane_y_length){
    rel_y += y-(screen_y/2);
    y = (screen_y/2);
  }
  if(x < (screen_x/2) && rel_x > 0 ){
    rel_x += x-(screen_x/2);
    x = (screen_x/2);
  }
  if(y < (screen_y/2) && rel_y > 0 ){
    rel_y += y-(screen_y/2);
    y = (screen_y/2);
  }

}



void Hud_Draw(){
  fill(255-255*(float(hp)/100),255*(float(hp)/100),0);
  
  rect(0,0,(float(hp)/100)*128,10);  
  fill(0,0,255);
  rect(0,10,float(mp/100)*128,10);  
}