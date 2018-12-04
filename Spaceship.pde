class Spaceship extends Floater  
{   
   private int SoMany;  
   public Spaceship()
   {
      myColor = 255;
      corners = 3;
      myCenterX = myCenterY = 500;
      //ArrayList <Float> AndyX = new ArrayList <Float>();
      // ArrayList <Float> AndyY = new ArrayList <Float>();
      //AndyX.set(0,30.0);
       //AndyX.set(1,-10.0);
      // AndyX.set(2,-10.0);
       //AndyY.set(0,0.0);
      // AndyY.set(1,10.0);
      // AndyY.set(2,-10.0);
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

  public void accelerate(double dAmount)
  {
    double dRadians = myPointDirection*(Math.PI/180);
    if (myDirectionX >= 9)
    {
      myDirectionX = 9;
    }
    else
    {
      myDirectionX += ((dAmount) * Math.cos(dRadians));
    }
    if (myDirectionX <= -9)
    {
      myDirectionX = -9;
    }
    else
    {
        myDirectionX += ((dAmount) * Math.cos(dRadians));
    } 
    if (myDirectionY >= 9)
    {
      myDirectionY = 9;
    }
    else
    {
      myDirectionY += ((dAmount) * Math.sin(dRadians));
    }
    if (myDirectionY <= -9)
    {
      myDirectionY = -9;
    }
    else
    {
      myDirectionY += ((dAmount) * Math.sin(dRadians));
    }
    }
    }
    

  

 
