Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(1600,1200);
  
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
 
  myFlower1 = new Flower(_r1+random(-20,20),_petals,_x,_y,_pc);
  myFlower2 = new Flower(_r1+random(-30,30),_petals,_x+random(-500,500),_y,_pc);
  myFlower3 = new Flower(_r1+random(-50,50),_petals,_x+random(-500,500),_y,_pc);

//  myFlower2 = new Flower();
//  myFlower3 = new Flower();
}

void draw(){
  background(#43AF76);
  myFlower1.display();
  myFlower1.ascendLinear();
  myFlower2.display();
  myFlower2.ascendSpread();
  myFlower3.display();
  myFlower3.ascendBounce();
  myFlower3.checkEdges();
  // noLoop();
}
