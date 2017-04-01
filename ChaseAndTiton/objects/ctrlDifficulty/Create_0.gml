phase = 0;
instructions = "";
flag = false;
var option;
if(!gamepad_is_supported()){
    show_message("It looks like gamepads are not supported on your system. This game requires gamepads to operate correctly.");
    game_end();
}
var slot_count = gamepad_get_device_count();
if( slot_count > 0){
    var true_count = 0;
    for( var i = 0; i < slot_count; i++){
        if(gamepad_is_connected(i)){
            true_count++;
        }
    }
    if( true_count > 2){
        phase = 2;
    }else{
        phase = true_count;
    }
}

