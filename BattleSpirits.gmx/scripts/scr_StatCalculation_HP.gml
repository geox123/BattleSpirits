if(!is_real(argument0) && !is_real(argument1))
    return 0;
else
    {
    var HP_REAL;
    var HP_BASE = argument0;
    var HP_EV = argument1;
    HP_REAL =(((2*HP_BASE)+(HP_EV/4)+100)*100)/100+10;
    return HP_REAL;
    }
