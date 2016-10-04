//hud

//clock
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_time);
draw_set_alpha(0.7);
draw_set_colour(c_black);
draw_rectangle(view_xview[view_current] + 700,view_yview[view_current],view_xview[view_current] + 820,view_yview[view_current] + 20,0)
draw_set_alpha(1);
draw_set_colour(c_white);
if (var_dn_cycle = 1)
{
    draw_text(view_xview[view_current] + 705, view_xview[view_current] + 0, string(var_clock) + " pm Day " + string(var_day + 1));
}else{
    draw_text(view_xview[view_current] + 705, view_xview[view_current] + 0, string(var_clock) + " am Day " + string(var_day + 1));
}    
