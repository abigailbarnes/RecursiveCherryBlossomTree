void setup()
{
  size(400,400);
  background(0);
  translate(width/2, height);
  
  branch(100);
}

void draw()
{
  
}

void branch(float change)
{
  float rot = PI/6;
  
  stroke(225);
  line(0, 0, 0, -1 * change);
  translate(0, -1*change);
  
  change *= 0.6;
  
  if(change > 3)
  {
    pushMatrix();
    rotate(rot);
    branch(change);
    popMatrix();
    
    pushMatrix();
    rotate(-rot);
    branch(change);
    popMatrix();
    
    change *= 0.6;
  }
}