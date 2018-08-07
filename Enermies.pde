// Add 'Enemy [] Enemies' to Hero_spil

class Enemy{
  int posX, posY, spriteW, spriteH, LoS, moveSpeed;
  float rotation;
  PImage img;
  int targetPosX, targetPosY;
  
  // walking
  
  Enemy(PImage image, int LineOfSight, int Xposition, int Yposition, int spriteWidth, int spriteHeight){
    posX = Xposition;
    posY = Yposition;
    img = image;
    LoS = LineOfSight;
    spriteH = spriteHeight;
    spriteW = spriteWidth;
  }
  
  void update(){
    // Will probably have to check if an enemy is "on" the screen before displaying..?
    
    
    if (playerInLoS()){
      
    }
    else{
    randomWalk();      
    }
    
    
    image(img, posX, posY, spriteW, spriteH);
  
  
  }
  boolean playerInLoS(){
    // Activate if player is in raycast of the enemies LoS
    return false;
  }
  
  void walkTowardsPlayer(){
  }
  void randomWalk(){
    
    if (posX == targetPosX && posY == targetPosY){
      generateNewPosition();
    }
    
    if (posX > targetPosX){
      posX -= moveSpeed;
    }
    else{
    posX += moveSpeed;
    }
    
    if (posY > targetPosY){
      posY -= moveSpeed;
    }
    else{
      posY += moveSpeed;
    }
    
    
  }
  
  void generateNewPosition(){
  // Generate new X and Y
  targetPosX = int(random(0, bane_x_length)); // Change spelling in normal
  targetPosY = int(random(0, bane_y_length));
  
  }
  
  
  void setImage(PImage image){
    img = image;
  }
  
}
