void imageloader(){
  ratImg = loadImage("Rat_filler.png");

}



void imagerotation(int x, int y){
   pushMatrix();
  //translate(ratImg.width/2, ratImg.height/2);
  //rotate(10);
    translate(x, y);    
    rotate(1);
  //translate(x, y);  
  popMatrix();
}
