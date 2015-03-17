boolean getEdgeHorizontal(int x,int y, int verseX){
  
  boolean response=false;
  int whiteCounter=0;
  
  for(int i=1;i<3;i++){
      color colore=get(x+i*verseX,y);
      if(brightness(colore)>threshold){
        whiteCounter++;
    }
  }
  if(whiteCounter>=2){
    response=true;
  }
    
  return response;
}
    
