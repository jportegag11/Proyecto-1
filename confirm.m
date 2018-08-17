function confirm()
    %se crea el objeto de tipo serial con las especificaciones
    delete(instrfindall);
    puerto = serial('COM9', ...
                  'BaudRate', 9600, ...
                  'Parity', 'none', ...
                  'DataBits', 8, ...
                  'StopBits', 1);
    
    fopen(puerto);        %se abre el puerto serial

    fprintf(puerto,chCoding(de2bi(42)));
    fclose(puerto);
end