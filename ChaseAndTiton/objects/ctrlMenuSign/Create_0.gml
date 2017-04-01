option[0] = create_menu_sign( 80, 304, "Continue", -4);
    option[0].selected = true;
option[1] = create_menu_sign( 80, 416, "Start", 2);
option[2] = create_menu_sign( 80, 496, "Options", -8);
option[3] = create_menu_sign( 80, 624, "Exit", 4);

option[0].visible = false;
if( directory_exists(working_directory + "\\Saves\\")){
    if( file_exists(working_directory + "\\*.cat")){
        visible = true;
    }
}

goToNext = false;
inputDelay = 0;

