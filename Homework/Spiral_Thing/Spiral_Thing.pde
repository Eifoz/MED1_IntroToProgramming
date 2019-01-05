// A polar coordinate 
float r = 45; 
float theta = radians(45);

float nTime = 0;
float nIncrement = 0.2;

void setup() {  
  size(1000, 1000);  
  background(255);
}
void draw() {   
  float x = r * cos(theta);  
  float y = r * sin(theta);
  float nx = noise(nTime);
  float nc = noise(nTime);

  noStroke();  
  fill(0,0,nc * 250);  
  ellipse(x + width/2, y + height/2, nx * 50 , nx * 50 ); 
  
  // Increment for spiral size
  nTime += nIncrement;

  // Increment the angle
  theta += 0.04;
  r += 1;
}
