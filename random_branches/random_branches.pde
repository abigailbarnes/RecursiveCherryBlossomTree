void setup()
{
  size(400,400);
  background(0);
  translate(width/2, height);
  branch(100);
}
void draw()
{}
void branch(float change)
{
  float num = random(3,7);
  float lenchange = random(0,1);
  float rot = PI/num;
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
    change *= lenchange;
  }
}