void screen_mover(){

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