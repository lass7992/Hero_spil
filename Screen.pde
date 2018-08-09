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


class Vision{
  Boolean Solid;
  int x_pos, y_pos;
  String type;
  
  Vision(int x, int y){
    x_pos = x;
    y_pos = y;
  }
  
  void ClearFog(){
    int [] temp = new int[0];
    for(int i = 0 ; i < Invisible_Area.length; i++){
      if(Invisible_Area[i].x_pos < x_pos+68 && Invisible_Area[i].x_pos > x_pos-68 && Invisible_Area[i].y_pos < y_pos+68 && Invisible_Area[i].y_pos > y_pos-68 && Test_If_In_Array(temp, i) == true){
        temp = append(temp, i);
        temp = Invisible_Area[i].ClearFog_v2(temp);
      }
    }
    temp = sort_high_to_low(temp);
    for(int q = 0 ;  q < temp.length ; q++){
      Invisible_Area = (Vision[])concat(subset(Invisible_Area,0,temp[q]),subset(Invisible_Area,temp[q]+1,Invisible_Area.length-temp[q]-1));
    }
  }
  
  
  int [] ClearFog_v2(int [] temp){
    for(int i = 0 ; i < Invisible_Area.length; i++){
      if(Invisible_Area[i].x_pos < x_pos+68 && Invisible_Area[i].x_pos > x_pos-68 && Invisible_Area[i].y_pos < y_pos+68 && Invisible_Area[i].y_pos > y_pos-68 && Test_If_In_Array(temp, i) == true){
        temp = append(temp, i);
        temp = Invisible_Area[i].ClearFog_v2(temp);
      }
    }
    return temp;
  }
  
}


boolean Test_If_In_Array(int [] temp, int i){
  
  boolean able = true;
  for(int q = 0 ;  q < temp.length ; q++){
    if(temp[q] == i){
      able = false;
    }
  }
  return able;
  
}

void fog_Collision(){
  for(int i = 0 ; i < Invisible_Area.length; i++){
    if(x > Invisible_Area[i].x_pos-rel_x && x < Invisible_Area[i].x_pos-rel_x + 64 && y > Invisible_Area[i].y_pos-rel_y && x < Invisible_Area[i].y_pos-rel_y + 64){
      Invisible_Area[i].ClearFog();
    }
  }
}