#define scr_Battle

    var spirit_player_ID = 1;
    var spirit_player_current_stat_HPMAX = 1;
    var spirit_player_current_stat_HPCURRENT = 1;
    var spirit_player_current_stat_ATTACK = 1;
    var spirit_player_current_stat_DEFEND = 1;
    var spirit_player_current_stat_SPECIALATTACK = 1;
    var spirit_player_current_stat_SPECIALDEFENSE = 1;
    var spirit_player_current_stat_SPEED = 1;

    draw_text(100,100,"TestA");
    draw_text(100,120,"HP: ");

    draw_text(200,100,"TestB");
    draw_text(200,120,"HP: ");
    
    
    
    if (!battleover){
        
        switch (current_phase)
        {
            case phase.action:
                draw_text(100,300,"Fight");
                draw_text(100,310,"Item");
                draw_text(100,320,"Switch");
                draw_text(100,330,"Run");
                draw_text(90,300+cursor_pos,">");
                if(!action_taken){
                    if keyboard_check(vk_down) && cursor_pos<=30
                        cursor_pos+=10;
                    if keyboard_check(vk_up) && cursor_pos>=0
                        cursor_pos-=10;
                }
                break;
                
            case phase.fight:
                break;
            case phase.item:
                break;
            case phase.switch_spirit:
                break;
            case phase.run:
                break;
            case phase.damage_calculation:
                break;
            case phase.endbattle:
                break;
        }
    }

#define script0
