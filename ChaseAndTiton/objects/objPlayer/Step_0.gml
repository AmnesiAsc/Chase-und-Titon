/// @description Handle movement

lastx = x;
lasty = y;

if( g.p[myGamepad].up){
	y -= spd;
}else if( g.p[myGamepad].down){
	y += spd;
}else if( g.p[myGamepad].left){
	x -= spd;
}else if( g.p[myGamepad].right){
	x += spd;
}