int Num=100;
int id,id1;
ArrayList<Pixel> Pixels;


void setup(){
  
  size(1200,1000,P2D);
  Pixels = new ArrayList<Pixel>();
  
  
}


void draw(){
  background(0);
  
  for(Pixel pixel1: Pixels){
    pixel1.multi();
    pixel1.collide();
     }
     Pixels.add(new Pixel());
     
  }
 
void mousePressed(){
 Pixels.add(new Pixel());
 
}
