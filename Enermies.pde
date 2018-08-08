// Add 'Enemy [] Enemies' to Hero_spil


// This 


class Enemy{
  int posX, posY, spriteW, spriteH, LoS, moveSpeed;
  float rotation;
  PImage img;
  int targetPosX, targetPosY;
  
  // walking
  
  Enemy(PImage image, int LineOfSight, int Xposition, int Yposition, int spriteWidth, int spriteHeight, int Speed){
    posX = Xposition;
    targetPosX = Xposition;
    posY = Yposition;
    targetPosY = Yposition;
    img = image;
    LoS = LineOfSight;
    spriteH = spriteHeight;
    spriteW = spriteWidth;
    moveSpeed = Speed;
  }
  
  void update(){
    // Will probably have to check if an enemy is "on" the screen before displaying..?
    
    
    if (playerInLoS()){
    // Go towards the player  
      walkTowardsPlayer();
    }
    
    
    else{
      // Walk towards a random position
      randomWalk();      
    }
    
    
    image(img, posX-rel_x, posY-rel_y, spriteW, spriteH);
    // Render the new image, with the new position
  
  }
  
  boolean playerInLoS(){
    // Activate if player is in raycast of the enemies LoS. This will have to be done later
    return false;
  }
  
  void walkTowardsPlayer(){
    // Walk towards the player with the enemy's movespeed.
  }
  
  void randomWalk(){
  // Walk towards a random position.
    
    // If the enemy is at its random target position, generate a new random position.
    if (posX == targetPosX && posY == targetPosY){
      generateNewPosition();
    }
    
    // Move toward the target position in x and y.
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
       println(posY);
       println(moveSpeed);
      posY += moveSpeed;
      println(posY);
    }
        
    
    
  }
  
  void generateNewPosition(){
  // Generate new X and Y
  targetPosX = int(random(0, bane_x_length)); // Change spelling in normal
  targetPosY = int(random(0, bane_y_length));
  println("target pos x: " + targetPosX );
  
  }
  
}
