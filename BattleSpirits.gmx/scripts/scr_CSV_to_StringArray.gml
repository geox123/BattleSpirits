if(!is_string(argument0))
    return 0;
    
var FILEPATH = argument0;

file = file_text_open_read(working_directory + FILEPATH);
file_text_readln(file);
while (!file_text_eof(file))
   {
   data[i]= file_text_read_string(file);
   i++;
   file_text_readln(file);
   }
   
file_text_close(file);

return data;
