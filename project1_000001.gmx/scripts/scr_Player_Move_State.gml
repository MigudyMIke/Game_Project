///scr_Player_Move_State()
scr_Get_Input();
depth = -y;

//Go to pause menu
if(key_escape){
    instance_create(1, 1, obj_pm);
    state = scr_Player_Pause_Menu_State;
}

//Detect interactive elements
if(key_confirm){
    scr_Get_Interaction();
}

//Go to stats menu
if(key_shift){
    instance_create(1, 1, obj_stat_menu)
    state = scr_Player_Stats_Menu_State;
}

h_walk = key_left + key_right;
//v_walk = key_up + key_down;

h_sp = h_walk * move_speed;
//v_sp = v_walk * move_speed;
    
//Horizontal
if(place_meeting(x + h_sp, y, obj_block)){
    while(!place_meeting(x + sign(h_sp), y, obj_block)){
    x += sign(h_sp);
    }
    h_sp = 0;
}
    
    
/*Vertical
if(place_meeting(x, y + v_sp, obj_block)){
    while(!place_meeting(x, y + sign(v_sp), obj_block)){
    y += sign(v_sp);
    }
    v_sp = 0;
}*/

x += h_sp;
y += v_sp;

if(v_sp < 0){
    sprite_index = spr_pc1_walk_n;
}
else if(v_sp > 0){
    sprite_index = spr_pc1_walk_s;
}
else if(h_sp < 0){
    sprite_index = spr_pc1_walk_w;
}
else if(h_sp > 0){
    sprite_index = spr_pc1_walk_e;
}

if(h_sp != 0 || v_sp != 0){
    image_speed = 0.2;
}
else{
    image_index = 0;
    image_speed = 0;
}

//Room limits
x = min(x,room_width - sprite_width);
x = max(x,0);

y = min(y,room_height - sprite_height);
y = max(y,0);
