void bane_generator(){
  int bane_x = int(random(500,1000));
  int bane_y = int(random(500,1000));
  println(bane_x);
  println(bane_y);


  
  
  PrintWriter output;

  output = createWriter("positions.txt"); 
  output.println(bane_x); // Write the coordinate to the file
  output.println(bane_y);

  
  String [][] temp_Bane = new String[int(bane_x/64)][int(bane_y/64)];
  
  for(int i = 0 ; i < temp_Bane.length ; i ++){
    temp_Bane[i][0] = "w";
    output.print("w");
  }
  
  
  
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file

}
