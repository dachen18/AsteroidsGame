Spaceship Andy = new Spaceship();
int DefBackground = 0;
Star[] OOF;
public void setup() 
{
  size(1000,1000);
  background(0);
  OOF = new Star[500];
  for (int ratS = 0; ratS < OOF.length;ratS++)
  {
  	OOF[ratS] = new Star();
  }
}
public void draw() 
{
  background(DefBackground);
  Andy.show();
  Andy.move();
  while (DefBackground > 0) //Flashes
  {
  	DefBackground = DefBackground - 1;
  }
}

public void keyPressed()
{
	if (key == 'w') {Andy.accelerate(0.75);}
	if (key == 's') {Andy.accelerate(-0.75);}
	if (key == 'd') {Andy.turn(5);}
	if (key == 'a') {Andy.turn(-5);}
	if (key == 'e') //Hypespace
	{
		for(int Back = 0;Back < 255;Back = Back + 1)
		{
			DefBackground = 255;
		}
		background(255);
		Andy.setX((int)(Math.random()*1000));
		Andy.getX();
		Andy.setY((int)(Math.random()*1000));
		Andy.getY();
		Andy.setDirectionX(0);
		Andy.getDirectionX();
		Andy.setDirectionY(0);
		Andy.getDirectionY();
		Andy.setPointDirection((int)(Math.random()*360));
		Andy.getPointDirection();
		background(0);
	}
}

