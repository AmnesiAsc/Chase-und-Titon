for( var i = 0; i < 2; i++){
    //Directional buttons
    if( gamepad_button_check_pressed( i, gp_padu)){
        p[i].up = true;
    }else if( gamepad_button_check_released( i, gp_padu)){
        p[i].up = false;
    }
    if( gamepad_button_check_pressed( i, gp_padd)){
        p[i].down = true;
    }else if( gamepad_button_check_released( i, gp_padd)){
        p[i].down = false;
    }
    if( gamepad_button_check_pressed( i, gp_padl)){
        p[i].left = true;
    }else if( gamepad_button_check_released( i, gp_padl)){
        p[i].left = false;
    }
    if( gamepad_button_check_pressed( i, gp_padr)){
        p[i].right = true;
    }else if( gamepad_button_check_released( i, gp_padr)){
        p[i].right = false;
    }
    
    //Face buttons
    if( gamepad_button_check_pressed( i, gp_face1)){
        p[i].action = true;
    }else if( gamepad_button_check_released( i, gp_face1)){
        p[i].action = false;
    }
    if( gamepad_button_check_pressed( i, gp_face2)){
        p[i].alt = true;
    }else if( gamepad_button_check_released( i, gp_face2)){
        p[i].alt = false;
    }
}

