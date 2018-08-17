function message = chDecoding(code)
preMessage = [];
for i = 1:8:length(code)
    p1 = xor(code(i),code(i+1));
    p2 = xor(code(i+2),code(i+3));
    p3 = xor(code(i),code(i+2));
    p4 = xor(code(i+1),code(i+3));
    %message = [message,code(i:i+3)]; 
    if p1 == code(i+4) && p2 == code(i+5) && p3 == code(i+6) && p4 == code(i+7)
    elseif p1 ~= code(i+4) && p3 ~= code(i+6)
        code(i) = not(code(i));
        disp('error')
    elseif p1 ~= code(i+4) && p4 ~= code(i+7)
        code(i+1) = not(code(i+1));
    elseif p2 ~= code(i+5) && p3 ~= code(i+6)
        code(i+2) = not(code(i+2));
    elseif p2 ~= code(i+5) && p4 ~= code(i+7)
        code(i+3) = not(code(i+3));
    end 
    preMessage = [preMessage,code(i:i+3)]; 
end
if preMessage(end-3:end) == [0,0,0,1]
    message = preMessage(1:end-5);
elseif preMessage(end-3:end) == [0,0,1,0]
    message = preMessage(1:end-6);
elseif preMessage(end-3:end) == [0,0,1,1]
    message = preMessage(1:end-7);
else 
    message = preMessage(1:end-4);
end
end
