void PlayerRotation(){
  float kat =  mouseX - x;
  float hyp = sqrt(pow(mouseX-x,2)+pow(mouseY-y,2));
  
  if(mouseY > y){
    rot = acos(kat/hyp);
  }else{
    rot = -acos(kat/hyp)+PI*2;
  }
}


void MovementChecker(){
  if( keys[0]) 
  {  
    x -= 3;
  }
  if( keys[1]) 
  {
    y += 3;
  }
  if( keys[2]) 
  {  
    y -= 3;
  }
  if( keys[3]) 
  {
    x += 3;
  }
}

void keyPressed(){
  if(key=='a')
    keys[0]=true;
  if(key=='s')
    keys[1]=true;
  if(key=='w')
    keys[2]=true;
  if(key=='d')
    keys[3]=true;
}
void keyReleased(){
    if(key=='a')
      keys[0]=false;
    if(key=='s')
      keys[1]=false;
    if(key=='w')
      keys[2]=false;
    if(key=='d')
      keys[3]=false;
}