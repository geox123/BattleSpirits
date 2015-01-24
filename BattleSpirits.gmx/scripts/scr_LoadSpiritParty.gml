if(!is_real(argument0))
    return 0;
    
var SPIRIT_NUMBER = argument0;

SPIRIT_STRING = scr_CSV_to_StringArray("\PlayerData\SpiritParty\SPIRIT_"+SPIRIT_NUMBER+".txt");
SPIRIT_DATA = scr_DelimitedString_to_Array(SPIRIT_STRING);

return SPIRIT_DATA;

