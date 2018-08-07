void Bane_Creater(){
  String[] Bane_file = loadStrings("bane.txt");
  bane_x_lenght = int(Bane_file[0]);
  bane_y_lenght = int(Bane_file[1]);

  
  for (int i = 2 ; i < Bane_file.length; i++) {
    for (int q = 0 ; q < Bane_file[i].length(); q++) {
      if (Bane_file[i].charAt(q) == 'o'){
        print(i + "  " + q);
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