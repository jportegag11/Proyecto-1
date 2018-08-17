%********Funcion para Decodificar Cadena de Bits*********

function mensaje = decodificacion(diccionario,codigo)
%Parametros
%   Diccionadio: matriz de 2 columnas. columna 1 simbolo, columna 2 codigo
%   Codigo: cadena de bits que codifica el mensaje
    cadena = [];
    mensaje = '';
    for i = 1:length(codigo)
        cadena = [cadena,codigo(i)];
        for j = 1:46 
            if(length(cell2mat(diccionario(j,2)))==length(cadena))
                if(cell2mat(diccionario(j,2))==cadena)
                   mensaje = strcat(mensaje,diccionario(j,1));
                   cadena = [];
                end
            end
        end
    end


end