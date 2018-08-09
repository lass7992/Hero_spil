// Add 'Enemy [] Enemies' to Hero_spil


// This 


class Enemy {
  int posX, posY, spriteW, spriteH, LoS, moveSpeed;
  float rotation;
  PImage img;
  int targetPosX, targetPosY;

  // walking

  Enemy(PImage image, int LineOfSight, int Xposition, int Yposition, int spriteWidth, int spriteHeight, int Speed) {
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

  void update() {
    // Will probably have to check if an enemy is "on" the screen before displaying..?


    if (playerInLoS()) {
      // Go towards the player  
      walkTowardsPlayer();
    } else {
      // Walk towards a random position
      randomWalk();
    }


    image(img, posX-rel_x, posY-rel_y, spriteW, spriteH);
    // Render the new image, with the new position
  }

  boolean playerInLoS() {
    // Activate if player is in raycast of the enemies LoS. This will have to be done later
    return false;
  }

  void walkTowardsPlayer() {
    // Walk towards the player with the enemy's movespeed.
  }

  void randomWalk() {
    // Walk towards a random position.

    // If the enemy is at its random target position, generate a new random position.
    if (((posX >= targetPosX-moveSpeed) && (posX <= targetPosX+moveSpeed)) && ((posY >= targetPosY-moveSpeed) && (posY <= targetPosY+moveSpeed))) {
      generateNewPosition();
    }

    // Move toward the target position in x and y.
    int previousX = posX;
    int previousY = posY;
    
    
    
    if (posX > targetPosX) {
      posX -= moveSpeed;
    } else {
      posX += moveSpeed;
    }

    if (posY > targetPosY) {
      posY -= moveSpeed;
    } else {
      posY += moveSpeed;
    }
    
    if (Collission()){
      println("Collission");
      
      posX = previousX;
      posY = previousY;
      generateNewPosition();
    
    }
    
  }

  void generateNewPosition() {
    // Generate new X and Y
    targetPosX = int(random(posX - 500, posX + 500)); // Change spelling in normal
    targetPosY = int(random(posY - 500, posY + 500));
  }


  private boolean CollissionX(int i) {


    if ((Objekter_paa_banen[i].x_pos <= posX) && (Objekter_paa_banen[i].x_pos+64 >= posX) && (Objekter_paa_banen[i].x_pos <= posX+32) && (Objekter_paa_banen[i].x_pos+64 >= posX+32)) {
      return true;
    }
    return false;
  }
  private boolean CollissionY(int i) {

    if ((Objekter_paa_banen[i].y_pos <= posY) && (Objekter_paa_banen[i].y_pos+64 >= posY) && (Objekter_paa_banen[i].y_pos <= posY+32) && (Objekter_paa_banen[i].y_pos+64 >= posY+32)) {
      return true;
    }
    return false;
  }


  boolean Collission() {

    for (int i = 0; i < Objekter_paa_banen.length; i++) {
      if (CollissionX(i) && CollissionY(i)) {
        return true;
      }
    }
    return false;
  }
}
