class Bullet extends Floater
{ 
	Bullet()
	{

	}
	double dRadians = myPointDirection*(Math.PI/180);
  public void setX(int x) {myCenterX = Andy.getX();}  
  public int getX()   {return (int)myCenterX;}
  public void setY(int y) {myCenterY = Andy.getY();}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x)   {myDirectionX = 5 * Math.cos(dRadians) + Andy.getDirectionX();}
  public double getDirectionX()  {return myDirectionX;}
  public void setDirectionY(double y)   {myDirectionY = 5 * Math.sin(dRadians) + Andy.getDirectionY();}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = Andy.getPointDirection();}
  public double getPointDirection() {return myPointDirection;}
  public void show()
  {
  	fill(255);
  	ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
}
