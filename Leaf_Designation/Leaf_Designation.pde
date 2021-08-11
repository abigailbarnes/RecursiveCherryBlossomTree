void setup()
{
  size(400,400);
  background(255);
  stroke(0);
  fill(0);
  rect(0, 400, 400, 80);
  translate(width/2, height);
  branch(100, 30, 15);
  save("goodtree.png");
}

void mousePressed()
{
  setup();
}

void draw()
{}

void branch(float branchLength, float bran, float radius)
{
  float num = random(5,8);
  float rot = PI/num;
  float r = random(2);
  stroke(102, 51, 0);
  strokeWeight(bran);
  line(0, 0, 0, -1 * branchLength);
  translate(0, -1*branchLength);
  branchLength *= 0.7; 
  bran *= 0.6;
  radius *= 1.1;
  if(branchLength > 1)
  {
    if(r <= 0.70 && branchLength <= 20)//bran where branchLength is
    {
      if(r <= 0.45)
      {
        //left branch
        pushMatrix();
        rotate(rot);
        branch(branchLength, bran, radius);
        popMatrix();
      }
      if(r > 0.45)
      {
        //right branch
        pushMatrix();
        rotate(-rot);
        branch(branchLength, bran, radius);
        popMatrix();
      }
    }
    else
    {
      //left branch
      pushMatrix();
      rotate(rot);
      if(branchLength <= 30)
      {
        stroke(255, 192, 203);
        fill(255, 192, 203);
        ellipse(0, 0, radius, radius);
      }
      branch(branchLength, bran, radius);
      popMatrix();
      //right branch
      pushMatrix();
      rotate(-rot);
      stroke(255, 192, 203);
      //ellipse(0, 0, radius, radius);
      branch(branchLength, bran, radius);
      if(branchLength <= 30)
      {
        stroke(255, 192, 203);
        fill(255, 192, 203);
        ellipse(0, 0, radius, radius);
      }
      popMatrix();
    }
  }
}