void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  background(0);
  for (int x = 15; x < 500; x = x + 70)
  {
    Die dice = new Die(x,x);
    dice.roll();
    dice.show();
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int value;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    value = (int)(Math.random()*6);
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
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
    //your code here
    noStroke();
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    if (value == 1) 
    {
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if (value == 2) 
    {
      ellipse(myX + 10, myY + 15, 10, 10);
      ellipse(myX + 40, myY + 35, 10, 10);
    }
    else if (value == 3) 
    {
      ellipse(myX + 10, myY + 15, 10, 10);
      ellipse(myX + 40, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if (value == 4) 
    {
      ellipse(myX + 10, myY + 15, 10, 10);
      ellipse(myX + 10, myY + 35, 10, 10);
      ellipse(myX + 40, myY + 15, 10, 10);
      ellipse(myX + 40, myY + 35, 10, 10);
    }
    else if (value == 5) 
    {
      ellipse(myX + 10, myY + 15, 10, 10);
      ellipse(myX + 10, myY + 35, 10, 10);
      ellipse(myX + 40, myY + 15, 10, 10);
      ellipse(myX + 40, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if (value == 6) 
    {
      ellipse(myX + 10, myY + 15, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 35, 10, 10);
      ellipse(myX + 40, myY + 15, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 35, 10, 10);
    }
  }
}
/*
void sum();
{
	text("")
}
