///scr_Player_Wait_For_Dialogue()
scr_Get_Input();
obj_lead.image_index = 0;
obj_lead.image_speed = 0;
if(key_confirm){
    if(interaction.d_count > 0){
        scr_dialogue(interaction.dialogue[interaction.d_count - 1], 5, interaction.x, interaction.y - interaction.boxheight);
        interaction.d_count -= 1;
    }
    else{
        obj_lead.state = scr_Player_Move_State;
        interaction.d_count = interaction.d_max;
    }
}
