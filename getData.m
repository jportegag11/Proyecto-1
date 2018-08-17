function data = getData()
    %se crea el objeto de tipo serial con las especificaciones
    delete(instrfindall);
    puerto = serial('COM8', ...
                  'BaudRate', 9600, ...
                  'Parity', 'none', ...
                  'DataBits', 8, ...
                  'StopBits', 1);
    
    fopen(puerto);        %se abre el puerto serial
    readasync(puerto);

    data = zeros(1,0);
    data = [data fread(puerto,1,'uchar')];
    pause(0.001);
    
    while puerto.BytesAvailable ~= 0
        data = [data fread(puerto,1,'uchar')];
        pause(0.005);
    end
    fclose(puerto);
    data = data(find(data ~= 10));
end