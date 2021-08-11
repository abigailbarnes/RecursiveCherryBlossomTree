void setup()
{
  size(400,400);
  background(0);
  translate(width/2, height);
  branch(100, 30);
}

void draw()
{}

void branch(float change, float bran)
{
  float num = random(3,8);
  float rot = PI/num;
  float r = random(2);
  stroke(225);
  strokeWeight(bran);
  line(0, 0, 0, -1 * change);
  translate(0, -1*change);
  change *= 0.6; 
  bran *= 0.6;
  if(change > 2)
  {
    //left branch
    pushMatrix();
    rotate(rot);
    branch(change, bran);
    popMatrix();
    //right branch
    pushMatrix();
    rotate(-rot);
    branch(change, bran);
    popMatrix();
  }
}