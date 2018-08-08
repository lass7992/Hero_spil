void Time_Controllers(){
  int time_speed = 1000;
  
  
  
  time += millis() - past_time;
  past_time = millis();
  
  // tricker hvis dere rgået over 100 milisekunder
  if(time > time_speed){
    time -= time_speed;
    
    if(hp < 90){
      hp += 10;
    }else if(hp < 100){
      hp = 100;
    }
    if(mp < 90){
      mp += 10;
    }else if(mp < 100){
      mp = 100;
    }
  
  
  }
}