function data = getData2()
    %se crea el objeto de tipo serial con las especificaciones
    delete(instrfindall);
    puerto = serial('COM9', ...
                  'BaudRate', 9600, ...
                  'Parity', 'none', ...
                  'DataBits', 8, ...
                  'StopBits', 1, ...
                  'Timeout', 5);
    
    fopen(puerto);        %se abre el puerto serial
    readasync(puerto);

    data = zeros(1,0);
    data = [data fread(puerto,1,'uchar')];
    pause(0.001);
    contador = 1;
    while puerto.BytesAvailable ~= 0
        data = [data fread(puerto,1,'uchar')];
        pause(0.005);
        contador = contador + 1;
        if contador == 26
            break;
        end
    end
    %fprintf(puerto,de2bi(5));
    fclose(puerto);
    data = data(find(data ~= 10));
end