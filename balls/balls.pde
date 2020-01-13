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
