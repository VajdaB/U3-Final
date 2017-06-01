PImage maze;
PImage maze2;
Timer t = new Timer();

int xPos = 20; //<>//
int yPos = 20; //<>//

int rectx = 737;
int recty = 790;

void setup() //<>//
{ //<>//
  fullScreen();
  noStroke();
  maze = loadImage("maze.png");
  maze.resize(800, 800);

}

void draw() //<>//
{ //<>//
    background(250,250,250);
      t.Update();
  image(maze, 0, 0);
  if (get(xPos, yPos)==color(0,0,0))
  {
    xPos = 20;
    yPos = 20;
  }
   fill(0, 105, 210);
  ellipse (xPos, yPos, 10, 10);
  
  fill(255,0,0);
  rect(rectx,recty,52,10);
  if (get(xPos, yPos)==color(255,0,0))
  {
      maze = loadImage("maze2.jpg");
      maze.resize(800, 800);
      xPos = 15;
      yPos = 15;
      rectx = 745;
      recty = 790;
  }

} //<>//

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
        yPos = yPos - 5;
    }
  }
  if (key == CODED)
  {
    if (keyCode == DOWN)
    {
        yPos = yPos + 5;
    }
  }
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
        xPos = xPos - 5;
    }
  }
  if (key == CODED)
  {
    if (keyCode == RIGHT)
    {
        xPos = xPos + 5;
    }
  }
}

void mousePressed()
{
  xPos=mouseX;
  yPos=mouseY;
}