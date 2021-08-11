//float l;

void setup()
{
  //l = 50;
  
  background(50);
}

void draw()
{
  
  translate(width/2, height);
  
  branch(150);
}

void branch(float l)
{
  float degree = 40; //this is an angle for each branch
  
  line(width/2, height, width/2, -l);
  translate(0, -l);
  l *= 0.8;
  
  if(l > 2)
  {
    pushMatrix();
    rotate(degree);
    branch(l);
    popMatrix();
    pushMatrix();
    rotate(-1 * degree);
    branch(l);
    popMatrix();
    
  }
}