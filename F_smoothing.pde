//Media aritmetica no ponderata

void smoothingEast(){
  totalEast=totalEast-eastXs[indexEast];
  eastXs[indexEast]=eastX;
  totalEast=totalEast+eastXs[indexEast];
  indexEast++;
  if(indexEast>=numReadings){
    indexEast=0;
  }
  averageEast=totalEast/numReadings;
  eastX=averageEast;

}
//************************************************************
void smoothingNorth(){
  totalNorth=totalNorth-northYs[indexNorth];
  northYs[indexNorth]=northY;
  totalNorth=totalNorth+northYs[indexNorth];
  indexNorth++;
  if(indexNorth>=numReadingsNorth){
    indexNorth=0;
  }
  averageNorth=totalNorth/numReadingsNorth;
  northY=averageNorth;
}
  
