%% transmisor

dic = {'#' 'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' ...
    'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'};
%load('dict.mat');
%dic = dict;
s = 'HOOLACOOMOESTAS';
sv = num2cell(s);
test = '';
trans = zeros(1,0);

i = 1;
while(i < length(sv))
   test = sv(i);
   while(any(strcmp(dic,test)))
       trans = [trans find(strcmp(dic,test))];
       test = strcat(test,sv(i+1));
       i = i + 1;
   end
   dic = [dic test];
end