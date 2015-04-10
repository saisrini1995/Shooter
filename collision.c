
//write bounding box collision for stationary ship
//get initial and final position and check for collision

int xs1,xs2,ys1,ys2;
int xb1,xb2,yb1,yb2;

bool collision=false;

float x,y;

//if both are live, check for collision
//cases are
/*1)ship is horizontal
//2)ship is vertical
//3)random directions
see that bullet cannot be horizontal or vertical
*/

if((xs1 != xs2) || (ys1 != ys2)){
  //horizontal
  if(ys1 == ys2){
    y=ys1;
    x=xb1+(xb2-xb1)*(ys1-yb1)/(yb2-yb1);
    //once values are known, find if they occured in the path
    //collision occured
    if( a && b) collision=true;
  }
