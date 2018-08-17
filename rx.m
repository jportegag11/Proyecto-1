function message = rx(channel,coding)
    load('dictShannonFano.mat');
    load('dictHuffman.mat');
    code = chDecoding(channel);
    if coding == 0
        message = decodificacion(dict,code);
    else
        message = decodificacion(DiccionarioShannonFanno,code);
    end
end