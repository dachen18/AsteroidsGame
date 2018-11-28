class Asteroids extends Floater
{
	protected float RandRot;
   protected float Moving;
    private int AstC1X,AstC2X,AstC3X,AstC4X,AstC1Y,AstC2Y,AstC3Y,AstC4Y;
    private int AstC;
	Asteroids()
	{
    AstC = ((int)(Math.random()*4)+4);
    myColor = 255;
    AstC1X = ((int)(Math.random()*30)-5);
    AstC2X = ((int)(Math.random()*30)-5);
    AstC3X = ((int)(Math.random()*30)-5);
    AstC4X = ((int)(Math.random()*30)-5);
    AstC1Y = ((int)(Math.random()*30)-5);
    AstC2Y = ((int)(Math.random()*30)-5);
    AstC3Y = ((int)(Math.random()*30));
    AstC4Y = ((int)(Math.random()*30));
      myDirectionX = Math.random()*30;
      myDirectionY = Math.random()*30;
      corners = 4;
      myCenterX = Math.random()*1001;
      myCenterY = Math.random()*1001;
     // ArrayList <Float> WusterX = new ArrayList <Float>();
     // ArrayList <Float> WusterY = new ArrayList <Float>();
     // if (AstC == 1)
     // {
     //   WusterX.set(0,(AstC1X));
     //   WusterY.set(0,(AstC1Y));
      //}
     // if (AstC == 2)
    // {
      // WusterX.add(AstC1X);
     //  WusterY.add(AstC1Y);
      // WusterX.add(AstC2X);
      // WusterY.add(AstC2Y);
     //}
      int[] WusterX = {AstC1X,AstC2X,AstC3X,AstC4X};
      int[] WusterY = {AstC1Y,AstC2Y,AstC3Y,AstC4Y};
     xCorners = WusterX;
     yCorners = WusterY;
		  RandRot = 4;
      Moving = (float)Math.random()*10;
	}
   public void move()
   {
      while (RandRot < 100000)
      {
         RandRot +=1;
      }
      rotate(RandRot);
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
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