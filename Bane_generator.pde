void bane_generator(){
  int bane_x = int(random(500,800));
  int bane_y = int(random(500,800));
  println(bane_x);
  println(bane_y);


  
  
  PrintWriter output;

  output = createWriter("positions.txt"); 
  output.println(bane_x); // Write the coordinate to the file
  output.println(bane_y);

  
  String [][] temp_Bane = new String[int(bane_x/64)][int(bane_y/64)];
  
  //starter med at lave vægge ved begge ender
  for(int i = 0 ; i < temp_Bane.length ; i ++){
    temp_Bane[i][0] = "w";
  }
  for(int i = 0 ; i < temp_Bane.length ; i ++){
    temp_Bane[i][int(bane_y/64)-1] = "w"; 
  }
  
 // generere banens indhold
 for(int i = 1 ; i < int(bane_y/64-1); i ++){
    temp_Bane[0][i] = "w";
    temp_Bane[int(bane_x/64)-1][i] = "w";
    
    for(int q = 1 ; q < int(bane_x/64)-1; q ++){
      temp_Bane[q][i] = "x";
    }
    
  }
  
  
  for(int i = 0 ; i < int(bane_y/64) ; i ++){
    for(int q = 0 ; q < temp_Bane.length ; q ++){
      output.print(temp_Bane[q][i]);
    } 
    output.println("");
  }
  
  
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file

}
