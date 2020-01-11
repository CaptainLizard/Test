int Num=1000;
drop[] droplet = new drop[Num];


void setup(){
 //size(600,600,P3D);
 fullScreen(P3D);
 float w = width;
 float h = height;
 
 for(int i = 0; i < Num; i++){
 droplet[i] = new drop();
 }
}

void draw(){
  translate(width/2,0);
  background(0);
  
for (int i = 0; i < Num; i++){
  droplet[i].update();
  droplet[i].display();
  
}

}
