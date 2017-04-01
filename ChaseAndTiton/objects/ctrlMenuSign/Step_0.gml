//Check input
if( --inputDelay <= 0){
    inputDelay = 0;
    if( g.p[0].down || g.p[1].down){
        goToNext = true;
        inputDelay = 10;
    }
    if( g.p[0].up || g.p[1].up){
        var numOptions = array_length_1d(option);
        for( var i = 0; i < numOptions; i++){
            if( option[i].selected){
                option[i].selected = false;
                if( i == 0){
                    option[numOptions - 1].selected = true;
                }else{
                    option[i - 1].selected = true;
                }
                break;
            }
        }
        inputDelay = 10;
    }
}
if( g.p[0].action){
    for( var i = 0; i < array_length_1d(option); i++){
        if( option[i].selected){
            switch( i){
                case 0:
                    //Continue
                    break;
                case 1:
                    room_goto(room_next(room));
                    break;
                case 2:
                    //Options
                    break;
                case 3:
                    game_end();
                    break;
                default:
                    show_message("ERR001: Selection out of bounds.");
                    break;
            }
            break;
        }
    }
}

//Move if needed
if( goToNext){
    var numOptions = array_length_1d(option);
    for( var i = 0; i < numOptions; i++){
        if( option[i].selected){
            option[i].selected = false;
            if( i == numOptions - 1){
                option[0].selected = true;
            }else{
                option[i + 1].selected = true;
            }
            break;
        }
    }
    goToNext = false;
}

