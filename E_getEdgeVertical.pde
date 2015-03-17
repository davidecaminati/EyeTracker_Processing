boolean getEdgeVertical(int x,int y,int verseY){
  
  boolean response=false;
  int whiteCounter=0;
  
  for(int i=1;i<3;i++){
      color colore=get(x,y+i*verseY);
      if(brightness(colore)>threshold){
        whiteCounter++;
    }
  }
  if(whiteCounter>=2){
    response=true;
  }
    
  return response;
}
    
