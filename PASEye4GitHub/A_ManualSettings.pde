//per sapere la brightness di un determinato pixel
void mousePressed(){
  color colore=get(mouseX,mouseY);
  println(brightness(colore));
}

void keyPressed(){
  //Muovi la lente
  if(keyCode==RIGHT){
    cursorX+=width/64;
    if(cursorX+lensWidth>=width){
      cursorX=width-lensWidth-1;
    }
  }
  if(keyCode==LEFT){
    cursorX-=width/64;
    if(cursorX<0){
      cursorX=0;
    }
  }
  if(keyCode==UP){
    cursorY-=height/64;
    if(cursorY<0){
      cursorY=0;
    }
  }
  if(keyCode==DOWN){
    cursorY+=height/64;
    if(cursorY>=height-lensHeight){
      cursorY=height-lensHeight-1;
    }
  }
  
  //Alza e abbassa la soglia 
  if(key=='d'){
    threshold+=5;
    println(threshold);
  }
  if(key=='c'){
    threshold-=5;
    println(threshold);
  }
  
 //scegli cosa monitorare dalla consolle
 if(key=='m'){
  monitorSwitch++;
  if(monitorSwitch>5){
    monitorSwitch=0;
  }
 } 
 //scegli se vedere la linea che delimita il punto più a est della pupilla e il punto + a nord della pupilla
 if(key=='v'){
   visualize=!visualize;
 } 
}
