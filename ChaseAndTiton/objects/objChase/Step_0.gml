/// @description Handle animations

event_inherited();

if( g.p[myGamepad].up){
	if( sprite_index != sprChaseWalkUp){
		sprite_index = sprChaseWalkUp;
	}
}else if( g.p[myGamepad].down){
	if( sprite_index != sprChaseWalkDown){
		sprite_index = sprChaseWalkDown;
	}
}else if( g.p[myGamepad].left){
	if( sprite_index != sprChaseWalkLeft){
		sprite_index = sprChaseWalkLeft;
	}
}else if( g.p[myGamepad].right){
	if( sprite_index != sprChaseWalkRight){
		sprite_index = sprChaseWalkRight;
	}
}else{
	if( sprite_index != sprChaseStand){
		sprite_index = sprChaseStand;
	}
}