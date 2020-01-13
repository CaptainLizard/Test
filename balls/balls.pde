int numballs = 100;
int id, id1;
int idc1;
//int []calor = new int[numballs];
boi[] boys = new boi[numballs];


void setup(){
  fullScreen(P2D);
 
  for (int i = 0; i < numballs; i++) {
   // calor[i] = int(random(0,255));
//idc1 = calor[i];
    boys[i] = new boi(id1, boys);
  }
  
}
  

void draw() {
background (0);

for (int i = 0; i < numballs; i++){ 
    boys[i].meandboys();
    boys[i].collide();
  }
  
}

class boi{
  float s = random(10,30);
  int idc;
  PVector V1 = new PVector(random(10,width),random(10,height));
  PVector V2 = new PVector(random(0,20),random(0,20));
  PVector Mlocation;
  int q;
  boi[] others;
  
  boi(int id1, boi[] oin){
    id=id1;
    //idc=idc1;
    others = oin;
  }
  
 void edges(){
  if((V1.y >= height)||(V1.y <0)) {
    V2.y=V2.y*-1;
  }
  if ((V1.x >= width)||(V1.x < 0)){
    V2.x=(V2.x)*-1;
      }
 }
    
    void update(){
     V1.add(V2);
    }
  
    void show(){
      //fill(calor[idc]);
     ellipse(V1.x,V1.y,s,s);
    }
    
    void meandboys(){
      this.show();
      this.edges();
      this.update();
    }
    
    void collide(){  
      for (int i = id + 1; i < numballs; i++){
        
        float d = dist(V1.x, V1.y, others[i].V1.x, others[i].V1.y);
        if (d <= s + others[i].s && this != others[i]) {
        V2.mult(-1);
        }
      }
    }
    
}
