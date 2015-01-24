if(!is_real(argument0) && !is_real(argument1) && !is_real(argument2) && !is_real(argument3))
    return 0;
else
    {
    var STAT_REAL;
    var STAT_TYPE = argument0;
    var STAT_BASE = argument1;
    var STAT_EV = argument2;
    var STAT_NATURE = argument3;
    var STAT_NATURE_MULTIPLIER = 1;
    var STAT_NATURE_INCREASE;
    var STAT_NATURE_DECREASE;
    
    var nature_string = scr_CSV_to_StringArray("\BattleData\Natures.txt");
    var nature_data = scr_DelimitedString_to_Array(nature_string);
     
    STAT_NATURE_INCREASE = nature_data[1];
    STAT_NATURE_DECREASE = nature_data[2];
        
    if(STAT_NATURE==STAT_NATURE_INCREASE)
        STAT_NATURE_MULTIPLIER=1.1;
    if(STAT_NATURE==STAT_NATURE_DECREASE)
        STAT_NATURE_MULTIPLIER=0.9;
    
    STAT_REAL =(((2*STAT_BASE)+(STAT_EV/4)*100)/100+5)*STAT_NATURE_MULTIPLIER;
    return STAT_REAL;
    }
