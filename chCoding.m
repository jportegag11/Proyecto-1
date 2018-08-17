function code = chCoding(message)
n = mod(length(message),4);
if n ~= 0
    message = [message,zeros(1,4-n)];
end
if n == 0
    message = [message,0,0,0,0];
end
if n == 1
    message = [message,0,0,0,1];
end
if n == 2
    message = [message,0,0,1,0];
end
if n == 3
    message = [message,0,0,1,1];
end
code = [];
for i = 1:4:length(message)
    p1 = xor(message(i),message(i+1));
    p2 = xor(message(i+2),message(i+3));
    p3 = xor(message(i),message(i+2));
    p4 = xor(message(i+1),message(i+3));
    code = [code,message(i:i+3),p1,p2,p3,p4];
end
end
