%Shannon
function comp = shannonFano(sig)
% load('arraySymbols.mat');
% load('arrayProb.mat');
% symbols = arraySymbols;
% p = arrayProb;
% 
% dict = huffmandict(symbols,p);
load('dictShannonFano.mat');
%sig = '� todo visitante de un reactor nuclear del tipo pileta abierta, al observar una intensa luz azul en su interior, le surge el enorme deseo de preguntar por qu� se genera';
sig = lower(sig);
comp = huffmanenco(sig,DiccionarioShannonFanno);
end