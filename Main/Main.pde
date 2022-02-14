int x,y,fila,columna,fitxesJ1=4,xJ1,yJ1;
int[][] taulell = new int[3][3];
boolean isMousePressed = false;
void setup(){
  size(600,500);
  for(int i = 0; i < 3;i++){
    for(int j = 0; j < 3;j++){
      taulell[i][j] = 0;
    }
  }
}

void draw(){
  //Color de fons
  background(152,190,100);
  //Cordenadas d'inici del taulell 
  x = 150;
  y = 100;
  xJ1=47;
  yJ1 = 137;
  //ImprimirFitxes
  for(int i = 0; i < fitxesJ1;i++){
    stroke(10,10,10);
    fill(200,0,0);
    ellipse(xJ1,yJ1,65,65);
    yJ1+=75;
  }
  //Imprimir taulell
  for(int i = 0; i < 3;i++){
    for(int j = 0; j < 3;j++){
      fill(20,20,20);
      stroke(250,250,250);
      rect(x,y,100,100);
      x += 100;
    }
    x=150;
    y += 100;
  }
  //-----------
  //Apuntar cap a la matriu
  columna=0;
  for(int i = 150; i <= 350;i+=100){
     fila=0;
     //-------------
     for(int j = 100; j <= 300;j+=100){
       if(mouseX > i && mouseX < i+100  && mouseY > j && mouseY < j+100){
        //println("Fila: "+ fila + " Columna: "+columna);
        if(isMousePressed){
         // taulell[fila][columna] = 1;
        }
      }
      if(fila<2){
        fila++;
      }
    } 
    //-------
    if(columna<2){
      columna++;
    }

}

  
}
void mousePressed(){
  isMousePressed = true;
    for(int i = 0; i < 3;i++){
    for(int j = 0; j < 3;j++){
     print(taulell[i][j]+" ");
    }
    println();
  }
}
void mouseReleased(){
  isMousePressed = false;
}
