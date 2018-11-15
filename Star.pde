class Star //note that this class does NOT extend Floater
{
  protected int StarX,StarY;
  protected float StarSize,StarColor;
  public Star()
  {
  StarColor = (float)(Math.random()*2.0000000);
  StarX = (int)(Math.random()*1001);
  StarY = (int)(Math.random()*1001);
   StarSize = (float)(Math.random()*1);
  }
  public void glow()
  {
    stroke(random(155)+100);
    strokeWeight(1);
    ellipse(StarX,StarY,StarSize,StarSize);
  }
  public void ResetPos()
  {
    StarSize = (float)(Math.random()*1);
    StarColor = (float)(Math.random()*2.0000000);
    StarX = (int)(Math.random()*1001);
    StarY = (int)(Math.random()*1001);
  }
}