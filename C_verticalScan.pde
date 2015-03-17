void verticalScan(int verseX,int verseY){

  for(int x=0;x<width;x++){
    int index=0;
    boolean breakXcycle=false;
    
    for(int y=0;y<height;y++){
      color colore=get(darkestX+x*verseX,darkestY+y*verseY);
      
      if(brightness(colore)>threshold){
        index++;
        if(index>=2){                                            //lo scorrimento del rigo si interrompe dopo 2 pixels bianchi               
          breakXcycle=true;
          break;
        }
      }
      if(brightness(colore)<=threshold){
        boolean response=getEdgeVertical(darkestX+x*verseX,darkestY+y*verseY,verseY);
        if(response){
          if(darkestY+y*verseY<northY){
            northY=darkestY+y*verseY;
            northX=darkestX+x*verseX;
            if(monitorSwitch==0){
              println("northY:  "+northY);
            }
          }              
          stroke(pupil);
          point(darkestX+x*verseX,darkestY+y*verseY); 
          break;                                                    //break dello scanning del rigo
        }
      }
    }
    if(breakXcycle){
      break;
    }
  }
}
