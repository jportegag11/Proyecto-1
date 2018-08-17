%Huffman decode
function sig = deHuffman(comp)
% load('arraySymbols.mat');
% load('arrayProb.mat');
% symbols = arraySymbols;
% p = arrayProb;
% 
% dict = huffmandict(symbols,p);
load('dictHuffman.mat');
%sig = 'Á todo visitante de un reactor nuclear del tipo pileta abierta, al observar una intensa luz azul en su interior, le surge el enorme deseo de preguntar por qué se genera';
sig = huffmandeco(comp,dict);
end