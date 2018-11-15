class Spaceship extends Floater  
{   
   private int SoMany;  
   public Spaceship()
   {
      myColor = 255;
      corners = 3;
      myCenterX = myCenterY = 500;
    int[] AndyX = {30,-10,-10};
    int[] AndyY = {0,10,-10};
      xCorners = AndyX;
      yCorners = AndyY;
   }
   public void setX(int x) {myCenterX = x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y) {myCenterY = y;}   
   public int getY() {return (int)myCenterY;}
   public void setDirectionX(double x) {myDirectionX = x;} 
   public double getDirectionX()  {return myDirectionX;}
   public void setDirectionY(double y) {myDirectionY = y;}
   public double getDirectionY() {return myDirectionY;}
   public void setPointDirection(int degrees) {myPointDirection = degrees;}
   public double getPointDirection() {return myPointDirection;}
}