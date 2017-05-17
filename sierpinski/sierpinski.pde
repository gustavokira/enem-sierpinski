
void setup(){
  size(800,800);
  background(255,255,255);
  triangulo3(400,100,400);
}

public void triangulo3(int tamanho, float x, float y){ 
  int t = tamanho/2;
  float h = (float)Math.sqrt( Math.pow(t,2)-Math.pow(t/2,2) );
  triangulo2(t, x, y);
  triangulo2(t, x+t, y);
  triangulo2(t, x+t/2, y-h);
}

public void triangulo2(int tamanho, float x, float y){ 
  int t = tamanho/2;
  float h = (float)Math.sqrt( Math.pow(t,2)-Math.pow(t/2,2) );
  triangulo(t, x, y);
  triangulo(t, x+t, y);
  triangulo(t, x+t/2, y-h);
}

public void triangulo(int tamanho, float x, float y){

  float px = x;
  float py = y;
  
  float ax = px;
  float ay = py;
  
  float bx = ax+tamanho;
  float by = py;
  
  float cx = px+((bx-ax)/2);
  float h = (float)Math.sqrt( Math.pow(tamanho,2)-Math.pow(tamanho/2,2) );
  float cy = py-h;
  
  fill(0,0,0);
  triangle(ax, ay, bx, by, cx, cy);
  fill(255,255,255);
  triangle(ax+tamanho/4, ay-h/2, bx-tamanho/4, by-h/2, cx, cy+h);
}