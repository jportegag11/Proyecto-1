%% LZW reception
%%
% -----------------------------
% RECEPTION
% -----------------------------
dicr = {'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' ...
    'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' ' '};
sr = '';
testr = '';
trans = ones(1,2);

trans(end-1) = bi2de(chDecoding(getData2()));
disp(trans(1));
sr = strcat(sr,dicr(trans(end-1)));
%confirm();

while(1)
   try
       trans(end) = bi2de(chDecoding(getData2()));
       %disp(trans);
       testr = dicr(trans(end));
       dicr = [dicr strcat(dicr{trans(end-1)},dicr{trans(end)}(1))];
       sr = strcat(sr,testr);
   catch % caso especial
       disp('exc');
       testr = strcat(dicr{trans(end-1)},dicr{trans(end-1)}(1));
       sr = strcat(sr,testr);
       dicr = [dicr testr];
   end
   disp(trans);
   trans(end-1) = trans(end);
   %confirm();
end

disp(sr);