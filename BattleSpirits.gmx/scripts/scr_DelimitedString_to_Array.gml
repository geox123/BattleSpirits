if(!is_string(argument0))
    return 0;
    
stringdata = argument0;
    
var subset_start=1;
var datalocation=0;
for(var i=1;i<=string_length(stringdata);i++)
   {
   if(string_char_at(stringdata, i)==','){
       array[datalocation]=string_copy(stringdata, subset_start, i-subset_start);
       subset_start=i+1;
       datalocation++;
       }
   }

return array;

