void setup()
{
	size(500,600);
	noLoop();
}
void draw()
{
	background(0);
	for (int y = 125; y < 400; y += 100)
	{
		for (int x = 125; x < 400; x += 100)
		{
			Die dice = new Die(x,y);
			dice.roll();
			dice.show();
		}
	}
	// void sumOfAll()
	// {
	// 	dice.value;
	// }
	// System.out.print("sumOfAll" 250, 450);
}
void mousePressed()
{
	redraw();
}
class Die
{
	int value;
	int myX, myY;
	Die(int x, int y) 
	{
		value = (int)(Math.random()*6);
		myX = x;
		myY = y;
	}
	void roll()
	{
		if (Math.random()*6 < 1)
		{
			value = 1;
		}
		
		else if (Math.random()*6 < 2)
		{
			value = 2;
		} 	
		else if (Math.random()*6 < 3) 
		{
			value = 3;	
		}
		else if (Math.random()*6 < 4) 
		{
			value = 4;	
		}
		else if (Math.random()*6 < 5) 
		{
			value = 5;	
		}
		else if (Math.random()*6 < 6) 
		{
			value = 6;	
		}
	}
	void show()
	{
		noStroke();
		fill(255);
		rect(myX,myY,50,50,15);
		fill(0);
		if (value == 1) 
		{
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		else if (value == 2) 
		{
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
		else if (value == 3) 
		{
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		else if (value == 4) 
		{
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
		else if (value == 5) 
		{
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		else if (value == 6) 
		{
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 25, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 25, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
	}
}
