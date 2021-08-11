void setup()
{
  //size(400, 400);
  fullScreen();
  background(255);
  stroke(0);
  fill(0);
  translate(width/2, height);
  branch(200, 30, 15);
  save("good new leaf.png");
}

void mousePressed()
{
  setup();
}

void draw()
{
}

void branch(float branchLength, float branchWeight, float radius)
{
  float num = random(5, 8);
  float rot = PI/num;
  float randomNum = random(2);
  
  stroke(102, 51, 0);
  strokeWeight(branchWeight);
  
  line(0, 0, 0, -1 * branchLength);
  translate(0, -1*branchLength);
  
  branchLength *= 0.7; 
  branchWeight *= 0.6;
  radius *= 1.1;
  
  if (branchLength > 1)
  {
    if (randomNum <= 0.70 && branchLength <= 20)//bran where branchLength is
    {
      if (randomNum <= 0.45)
      {
        //left branch
        pushMatrix();
        rotate(rot);
        branch(branchLength, branchWeight, radius);
        popMatrix();
      }
      else
      {
        //right branch
        pushMatrix();
        rotate(-rot);
        branch(branchLength, branchWeight, radius);
        popMatrix();
      }
    } else
    {
      //left branch
      pushMatrix();
      rotate(rot);
      branch(branchLength, branchWeight, radius);
      if (branchLength <= 30)
      {
        stroke(255, 192, 203);
        fill(255, 192, 203);
        ellipse(0, 0, radius, radius);
      }
      popMatrix();
      //right branch
      pushMatrix();
      rotate(-rot);
      stroke(255, 192, 203);
      //ellipse(0, 0, radius, radius);
      branch(branchLength, branchWeight, radius);
      if (branchLength <= 30)
      {
        float randomGaussianNumber = randomGaussian();
        float distanceCirclesDrawnFromCenter = radius;
        float concentratedArea = 0;
        float scaleForGaussianDistribution = ( randomGaussianNumber * distanceCirclesDrawnFromCenter ) + concentratedArea;
        stroke(255, 192, 203);
        fill(255, 10);
        //fill(255, 192, 203);
        ellipse(scaleForGaussianDistribution, 0, radius, radius);
      }
      popMatrix();
    }
  }
}