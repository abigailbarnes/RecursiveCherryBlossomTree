void setup()
{
  size(400,400);
  background(255);
  stroke(0);
  fill(0);
  rect(0, 400, 400, 80);
  translate(width/2, height);
  branch(100, 30);
  save("goodtree.png");
}

void mousePressed()
{
  setup();
}

void draw()
{}

void branch(float change, float bran)
{
  float num = random(5,8);
  float rot = PI/num;
  float r = random(2);
  stroke(102, 51, 0);
  strokeWeight(bran);
  line(0, 0, 0, -1 * change);
  translate(0, -1*change);
  change *= 0.7; 
  bran *= 0.6;
  if(change > 1)
  {
    if(r <= 0.70 && bran <= 20)
    {
      if(r <= 0.45)
      {
        //left branch
        pushMatrix();
        rotate(rot);
        branch(change, bran);
        popMatrix();
      }
      if(r > 0.45)
      {
        //right branch
        pushMatrix();
        rotate(-rot);
        branch(change, bran);
        popMatrix();
      }
    }
    else
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
}