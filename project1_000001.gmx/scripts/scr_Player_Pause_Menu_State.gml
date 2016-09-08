///scr_Player_Pause_Menu_State
scr_Get_Input();

//Leave the pause menu
if(key_escape){
    state = scr_Player_Move_State;
    with(obj_pm){
        instance_destroy();
    }
}

