function sendData(data)
    %se crea el objeto de tipo serial con las especificaciones
    delete(instrfindall);
    puerto = serial('COM8', ...
                  'BaudRate', 9600, ...
                  'Parity', 'none', ...
                  'DataBits', 8, ...
                  'StopBits', 2);
    
    fopen(puerto);        %se abre el puerto serial
    
    for i = 1:8:length(data)
        fprintf(puerto,data(i:i+7));
    end
    fclose(puerto);
end
