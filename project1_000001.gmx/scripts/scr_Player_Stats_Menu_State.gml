///scr_Player_Stats_Menu_State
scr_Get_Input();

if(key_shift){
    with(obj_stat_menu){
        instance_destroy();
    }
    state = scr_Player_Move_State;
}
