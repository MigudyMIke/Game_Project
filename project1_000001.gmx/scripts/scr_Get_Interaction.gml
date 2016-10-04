///scr_Get_Interaction

//Check for interactive objects
interaction = collision_rectangle(x - 32, 0, x + 32, 1680, obj_Interactive, false, true);
if(interaction != noone){
    switch(interaction.object_index){
        //If it's an NPC
        case obj_npc:
            //Run the first line of dialogue and go to the waiting script
            scr_dialogue(interaction.dialogue[interaction.d_count - 1], 5, interaction.x, interaction.y - interaction.boxheight);
            interaction.d_count -= 1;
            state = scr_Player_Wait_For_Dialogue;
        break;
        //If it's an unlocked door
        case obj_rm_next:
            if (keyboard_check_pressed(vk_space)){
                room_goto(interaction.var_rm_next);
                obj_lead.x = X;
                obj_lead.y = Y;
                }
        break;
        //If it's a locked door
        case obj_locked:
            if (var_key > 0){
                if (keyboard_check_pressed(vk_space)){
                    room_goto(interaction.var_rm_next);
                    obj_lead.x = X;
                    obj_lead.y = Y;
                }
            }
            else{
            scr_dialogue(interaction.dialogue[interaction.d_count - 1], 5, interaction.x, interaction.y - interaction.boxheight);
            interaction.d_count -= 1;
            state = scr_Player_Wait_For_Dialogue;
            }
        break;
        //If it's a key
        case obj_key:
            var_key = var_key +1;
            with(interaction)
            {
                instance_destroy()
            }
        break;
        //If it's none of the above
        default:
            state = scr_Player_Move_State;
    
    }
}//If there's no interactive object in range
else{
    state = scr_Player_Move_State;
}



