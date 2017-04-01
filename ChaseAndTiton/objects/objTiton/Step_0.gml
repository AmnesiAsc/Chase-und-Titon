/// @description Handle animations

event_inherited();

if( g.p[myGamepad].up){
	if( sprite_index != sprTitonWalkUp){
		sprite_index = sprTitonWalkUp;
	}
}else if( g.p[myGamepad].down){
	if( sprite_index != sprTitonWalkDown){
		sprite_index = sprTitonWalkDown;
	}
}else if( g.p[myGamepad].left){
	if( sprite_index != sprTitonWalkLeft){
		sprite_index = sprTitonWalkLeft;
	}
}else if( g.p[myGamepad].right){
	if( sprite_index != sprTitonWalkRight){
		sprite_index = sprTitonWalkRight;
	}
}else{
	if( sprite_index != sprTitonStand){
		sprite_index = sprTitonStand;
	}
}