class Star //note that this class does NOT extend Floater
{
  protected float StarX,StarY;
  public Star()
  {
  StarX = ((float)Math.random())*1001;
  StarY = ((float)Math.random())*1001;
  fill(random(255));
  ellipse(StarX,StarY,2.5,2.5);
  }


}
