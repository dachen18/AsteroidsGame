class Asteroids extends Floater
{
	protected float RandRot;
   protected float Moving;
    private int AstC;
	Asteroids()
	{
     AstC = ((int)(Math.random()*20)-10);
      myColor = 255;
      myDirectionX = Math.random()*10;
      myDirectionY = Math.random()*10;
      corners = 3;
      myCenterX = Math.random()*1001;
      myCenterY = Math.random()*1001;
      int[] WusterX = {1,3,2};
      int[] WusterY = {1,3,4};
      //int[] WusterX = {1+AstC,1+AstC,1+AstC};
      //int[] WusterY = {1+AstC,1+AstC,1+AstC};
      xCorners = WusterX;
      yCorners = WusterY;
		RandRot = 4;
      Moving = (float)Math.random()*10;

	}
  public void test()
  {
    System.out.println(AstC);
  }
   public void move()
   {
      while (RandRot < 501)
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