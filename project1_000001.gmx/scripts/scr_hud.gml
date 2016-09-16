//hud

//clock
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_time);
draw_set_alpha(0.7);
draw_set_colour(c_black);
draw_rectangle(view_xview[view_current] + 500,view_yview[view_current],view_xview[view_current] + 570,view_yview[view_current] + 15,1)
draw_set_alpha(1);
draw_set_colour(c_white);
if (var_dn_cycle = 1)
{
    draw_text(view_xview[view_current] + 505, view_xview[view_current] + 5, string(var_clock) + " pm");
}else{
    draw_text(view_xview[view_current] + 505, view_xview[view_current] + 5, string(var_clock) + " am");
}    
