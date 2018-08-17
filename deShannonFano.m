%Shannon decode
function sig = deShannonFano(comp)
% load('arraySymbols.mat');
% load('arrayProb.mat');
% symbols = arraySymbols;
% p = arrayProb;
% 
% dict = huffmandict(symbols,p);
load('dictShannonFano.mat');
%sig = 'Á todo visitante de un reactor nuclear del tipo pileta abierta, al observar una intensa luz azul en su interior, le surge el enorme deseo de preguntar por qué se genera';
sig = huffmandeco(comp,DiccionarioShannonFanno);
end