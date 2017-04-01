//Phase controller
switch(phase){
    case 0: //Waiting for first gamepad to be connected
        if(!flag){
            instructions = "This game requires two gamepads. Please connect a gamepad now.";
            flag = true;
        }
        var slot_count = gamepad_get_device_count();
        for( var i = 0; i < slot_count; i++){
            if( gamepad_is_connected(i)){
                phase++;
                flag = false;
                break;
            }
        }
        break;
    case 1: //Waiting for second gamepad to be connected
        if(!flag){
            instructions = "This game requires two gamepads. Please connect the second gamepad now.";
            flag = true;
        }
        var slot_count = gamepad_get_device_count();
        for( var i = 1; i < slot_count; i++){
            if( gamepad_is_connected(i)){
                phase++;
                flag = false;
                break;
            }
        }
        break;
    case 2: //Selecting difficulty for P1
        if(!flag){
            instructions = "Player 1, please select your difficulty. This will affect stuff.";
            option[0] = instance_create(room_width / 4, room_height / 2, objButton);
                option[0].text = "Easy";
                option[0].selected = true;
            option[1] = instance_create(room_width / 2, room_height / 2, objButton);
                option[1].text = "Medium";
            option[2] = instance_create(room_width / 4 * 3, room_height / 2, objButton);
                option[2].text = "Hard";
            flag = true;
        }
        //Check input
        if(
            gamepad_button_check_pressed(0, gp_face1)
            || gamepad_button_check_pressed(0, gp_start)
        ){
            for( var i = 0; i < array_length_1d(option); i++){
                if( option[i].selected){
                    global.p1difficulty = i;
                    for( var i = 0; i < array_length_1d(option); i++){
                        with(option[i]){
                            instance_destroy();
                        }
                    }
                    option = 0;
                    phase++;
                    flag = false;
                    break;
                }
            }
        }
        break;
    case 3: //Selecting difficulty for P2
        if(!flag){
            instructions = "Player 2, please select your difficulty. This will affect stuff.";
            option[0] = instance_create(room_width / 3, room_height / 2, objButton);
                option[0].text = "First Game";
                option[0].selected = true;
            option[1] = instance_create(room_width / 3 * 2, room_height / 2, objButton);
                option[1].text = "Proficient";
            flag = true;
        }
        //Check input
        if(
            gamepad_button_check_pressed(1, gp_face1)
            || gamepad_button_check_pressed(1, gp_start)
        ){
            for( var i = 0; i < array_length_1d(option); i++){
                if( option[i].selected){
                    global.p2difficulty = i;
                    room_goto(room_next(room));
                }
            }
            option = 0;
        }
        break;
    default: //Should not happen
        show_message("Phase out of range");
        game_end();
        break;
}



//Input
if( //If right button is pressed, move the selector 1 item to the right
    gamepad_button_check_pressed(0, gp_padr)
    || gamepad_button_check_pressed(1, gp_padr)
){
    var option_count = array_length_1d(option);
    for( var i = 0; i < option_count; i++){
        if( option[i].selected){
            option[i].selected = false;
            if( i == option_count - 1){
                option[0].selected = true;
            }else{
                option[i+1].selected = true;
            }
            break;
        }
    }
}else if( //If left button is pressed, ...
    gamepad_button_check_pressed(0, gp_padl)
    || gamepad_button_check_pressed(1, gp_padl)
){
    var option_count = array_length_1d(option);
    for( var i = 0; i < option_count; i++){
        if( option[i].selected){
            option[i].selected = false;
            if( i == 0){
                option[option_count - 1].selected = true;
            }else{
                option[i - 1].selected = true;
            }
            break;
        }
    }
}

