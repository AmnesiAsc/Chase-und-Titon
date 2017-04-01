draw_set_color(c_navy);
if(selected){
    draw_set_color(c_orange);
}
draw_rectangle(x, y, x + 100, y + 50, false);
draw_set_color(c_white);
draw_text(x,y,string_hash_to_newline(text));

