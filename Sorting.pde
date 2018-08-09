int [] sort_high_to_low(int [] OC){
  int [] temp = OC;
  int temp_value = 0;
  for(int i = 0 ; i < OC.length ; i++){
    for(int q = 0 ; q < OC.length-i ; q++){
      if(temp[q+i] > temp[i]){
          temp_value = temp[q+i];
          temp[q+i] = temp[i];
          temp[i] = temp_value;
        
      }
    }
    
  }
  
  return temp;
}