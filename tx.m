function channel = tx(message,coding,error,p)
    message = lower(message);
    if coding == 0
        code = huffman(message);
    else
        code = shannonFano(message);
    end
    channel = chCoding(code);
    if error == 1
        channel = addError(channel,p);
    end
    %transmitir datos
    sendData(char(channel));
end