//does this count? I have no idea what the code is doing
public void makeFrog(float x, float y, float size){
    size = size * 25/140;
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(0,255,0);
    ellipse(-size, -size, size * 2, size * (65/25.0));
    ellipse(size, -size, size * 2, size * (65/25.0));
    
    fill(255);
    ellipse(-size, -size, size * (37/25.0), size * (52/25.0));
    ellipse(size, -size, size * (37/25.0), size * (52/25.0));
    
    fill(0);
    ellipse(-size * (26/25.0), size * (-39/25.0), size * (13/25.0), size * (13/25.0));
    ellipse(+size * (26/25.0), size * (-39/25.0), size * (13/25.0), size * (13/25.0));
    
    fill(0,255,0);  
    ellipse(0, 0, size * (140/25.0), size * (70/25.0));
    
    fill(0);
    stroke(0);
    strokeWeight(size * (4/25.0));
    line(-size, size * (15/25.0), size, size * (15/25.0));
    
    popMatrix();
}

void makeALotOfFrog(float x, float y, float size){
  if(size <= 40)
  {
    makeFrog(x,y,size);
  }
  else
  {
    makeALotOfFrog(x+size*0.25, y, size/2);
    makeALotOfFrog(x-size*0.25, y, size/2);
    makeALotOfFrog(x, y+size*0.25, size*0.3);
    makeALotOfFrog(x, y-size*0.25, size*0.3);
  }
}

void setup()
{
size(1000,1000);
background(0);
}
void draw(){
 makeALotOfFrog(500,500,1000);
}
