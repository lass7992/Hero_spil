void Bane_Creater(){
  String[] Bane_file = loadStrings("bane.txt");
  bane_x_length = int(Bane_file[0]);
  bane_y_length = int(Bane_file[1]);

  
  for (int i = 2 ; i < Bane_file.length; i++) {
    for (int q = 0 ; q < Bane_file[i].length(); q++) {
      if (Bane_file[i].charAt(q) == 'w'){
        Objekter_paa_banen = (Bane_Objekter[])append(Objekter_paa_banen, new Bane_Objekter(64*q,64*(i-2),true, "wall"));
      }
      else if(Bane_file[i].charAt(q) == 'd'){
        Objekter_paa_banen = (Bane_Objekter[])append(Objekter_paa_banen, new Bane_Objekter(64*q,64*(i-2),false, "door"));
      }
      else if(Bane_file[i].charAt(q) == 'r'){
        Enemies = (Enemy[])append(Enemies , createRat(64*q,64*(i-2)));
      }
      if(Bane_file[i].charAt(q) != 'w' && Bane_file[i].charAt(q) != 'd'){
        Invisible_Area = (Vision[])append(Invisible_Area, new Vision(64*q,64*(i-2)));
      }
    }
  }  


}

class Bane_Objekter{
  Boolean Solid;
  int x_pos, y_pos;
  String type;
  
  Bane_Objekter(int x, int y, Boolean sol, String typ){
    x_pos = x;
    y_pos = y;
    Solid = sol;
    type = typ;
    
  }
}


void Bane_Draw(){
  for (int i = 0 ; i < Objekter_paa_banen.length; i++){
    if(Objekter_paa_banen[i].type == "wall"){
      fill(100,100,100);
      rect(Objekter_paa_banen[i].x_pos-rel_x,Objekter_paa_banen[i].y_pos-rel_y, 64,64);
    }
    else if(Objekter_paa_banen[i].type == "door"){
      fill(50,50,200);
      rect(Objekter_paa_banen[i].x_pos-rel_x,Objekter_paa_banen[i].y_pos-rel_y, 64,64);
    }
  }
}