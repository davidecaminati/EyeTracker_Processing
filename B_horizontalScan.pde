void horizontalScan(int verseX,int verseY){

  for(int y=0;y<height;y++){
    int index=0;
    boolean breakYcycle=false;
    
    for(int x=0;x<width;x++){
      color colore=get(darkestX+x*verseX,darkestY+y*verseY);
      
      if(brightness(colore)>threshold){
        index++;
        if(index>=2){                           //lo scorrimento del rigo si interrompe dopo 2 pixels bianchi
          breakYcycle=true;
          break;
        }
      }
      if(brightness(colore)<=threshold){
        boolean response=getEdgeHorizontal(darkestX+x*verseX,darkestY+y*verseY,verseX);
        if(response){
          if(darkestX+x*verseX>eastX){
            eastX=darkestX+x*verseX;
            eastY=darkestY+y*verseY;
            if(monitorSwitch==1){
              println("eastX:  "+eastX);
            }
          }
            
          stroke(pupil);
          point(darkestX+x*verseX,darkestY+y*verseY); 
          break;                               //break dello scanning del rigo
        }
      }
    }
    if(breakYcycle){
      break;
    }
  }
}
