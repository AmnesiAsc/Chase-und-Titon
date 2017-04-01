draw_set_color(c_gray);
draw_rectangle(40, 40, room_width - 40, room_height / 2 - 40, false);
draw_set_color(c_blue);
draw_text(60,60,string_hash_to_newline(instructions));

