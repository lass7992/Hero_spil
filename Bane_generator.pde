void bane_generator(){
  int bane_x = int(random(800,1000));
  int bane_y = int(random(800,1000));
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
    //her generere den banen
  temp_Bane = wall_generator(int(random(2,int(bane_x/64)-2)), 1, temp_Bane);
  temp_Bane = wall_generator(1,int(random(2,int(bane_y/64)-2)), temp_Bane);
  temp_Bane = wall_generator(int(random(1,int(bane_x/64)-1)), (bane_y/64)-2, temp_Bane);
  //temp_Bane = wall_generator(int(random(1,int(bane_x/64)-1)), (bane_x/64)/2, temp_Bane);
  //temp_Bane = wall_generator(5,int(random(1,int(bane_x/64)-1)), temp_Bane);
   
  
  
  for(int i = 0 ; i < int(bane_y/64) ; i ++){
    for(int q = 0 ; q < temp_Bane.length ; q ++){
      output.print(temp_Bane[q][i]);
    } 
    output.println("");
  }
  
  
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file

}





String [][] wall_generator(int target_x, int target_y, String [][] temp_Bane){
  temp_Bane[target_x][target_y] = "w";
  int right = 0;
  int left = 0;
  int up = 0;
  int down = 0;
  int count = 4;
  
  if(temp_Bane[target_x+1][target_y] != "w"){      //tjeker til højre
    right = int(random(1,100));
    count--;
  }else{
    left += int(random(1,60));
  }
  
  if(temp_Bane[target_x-1][target_y] != "w"){      //tjeker til venstre
    left = int(random(1,100));
    count--;
  }else{
    right += int(random(1,100));
  }
  
  if(temp_Bane[target_x][target_y-1] != "w"){      //tjeker op
    up = int(random(1,100));
    count--;
  }else{
    down += int(random(1,100));
  }
  if(temp_Bane[target_x][target_y+1] != "w"){      //tjeker ned
    down = int(random(1,100));
    count--;
  }else{
    up += int(random(1,100));
  }

  if(count <= 1){
    if(down > right && down > left && down > up){
      temp_Bane = wall_generator(target_x, target_y+1 , temp_Bane);    
    }
    
    else if(left > right && left > up && left > down){
      temp_Bane = wall_generator(target_x-1, target_y , temp_Bane);
    }
    else if(up > right && up > left && up > down){
      temp_Bane = wall_generator(target_x, target_y-1 , temp_Bane);
    }
    else if(right > left && right > up && right > down){
      temp_Bane = wall_generator(target_x+1, target_y , temp_Bane);
    }
  }
  
  
  
  return temp_Bane;

}
