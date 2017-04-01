draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, 1);

draw_set_font(fntMenuSignB);
draw_set_color(c_black);
if( selected){
    draw_set_color(c_yellow);
}
draw_text_transformed(x + 32, y + 12, string_hash_to_newline(text), 1, 1, rot);
draw_set_font(fntMenuSignF);
draw_set_color(c_white);
draw_text_transformed(x + 34, y + 13, string_hash_to_newline(text), 1, 1, rot);

