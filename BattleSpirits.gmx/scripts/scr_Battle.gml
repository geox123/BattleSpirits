
//Call BattleScript, pass battlefile id
    //init
    //load battlefile
    //set variables
    
    var spirit_player_ID = 1;
    var spirit_player_current_stat_HPMAX = 1;
    var spirit_player_current_stat_HPCURRENT = 1;
    var spirit_player_current_stat_ATTACK = 1;
    var spirit_player_current_stat_DEFEND = 1;
    var spirit_player_current_stat_SPECIALATTACK = 1;
    var spirit_player_current_stat_SPECIALDEFENSE = 1;
    var spirit_player_current_stat_SPEED = 1;
    
    
    //sequence
    //draw transition
    //draw trainers
    display intro text (load from battlefile)
    draw HUD
    send out 1st spirits
    
    //Loop
    action:
        goto (fight, item, switch, run)
    fight:
        choose move
        goto damage calculation
    item:
        choose item
        goto damage calculation
    switch:
        choose spirit
        goto damage calculation
    run:
        run calculation
            if success
                goto endbattle
            else
                goto damage calculation
    
    damage calculation:
        //do stuff
        if player spirit dead && spirits remaining
            goto switch
        else if player spirit dead && spirits not remaining
            goto endbattle
        else if player spirit not dead
            goto action
            
    endbattle:
        if won
            draw opponent
            draw end text
            //do stuff
        if lost
            draw lost text
            //do stuff
