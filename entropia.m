% ----------------------------------------------------
% Calcula la entropía del idioma español
% basándose en textos recopilados de wikipedia
% ----------------------------------------------------

links = ["https://es.wikipedia.org/wiki/Sistema_solar"; ...
    "https://es.wikipedia.org/wiki/Entrop%C3%ADa_(informaci%C3%B3n)"; ...
    "https://es.wikipedia.org/wiki/Tierra"; ...
    "https://es.wikipedia.org/wiki/Piel"; ...
    "https://es.wikipedia.org/wiki/Leyenda"; ...
    "https://es.wikipedia.org/wiki/Sobrenatural"; ...
    "https://es.wikipedia.org/wiki/Diablo"; ...
    "https://es.wikipedia.org/wiki/Evangelio_de_Mateo"; ...
    "https://es.wikipedia.org/wiki/Evangelio_de_Juan"; ...
    "https://es.wikipedia.org/wiki/Cuerpo_humano"; ...
    "https://es.wikipedia.org/wiki/Patrimonio_de_la_Humanidad"; ...
    "https://es.wikipedia.org/wiki/1972"; ...
    "https://es.wikipedia.org/wiki/Simiiformes"; ...
    "https://es.wikipedia.org/wiki/Aeropuerto_de_Lanzarote"; ...
    "https://es.wikipedia.org/wiki/Aeropuerto_de_Tenerife_Sur"; ...
    "https://es.wikipedia.org/wiki/2015"; ...
    "https://es.wikipedia.org/wiki/Real_Academia_Española"; ...
    "https://es.wikipedia.org/wiki/Asamblea_General_de_las_Naciones_Unidas"; ...
    "https://es.wikipedia.org/wiki/Consejo_de_Seguridad_de_las_Naciones_Unidas"; ...
    "https://es.wikipedia.org/wiki/Reino_Unido"];

A = 0;
a_t = 0;
B = 0;
C = 0;
D = 0;
E = 0;
e_t = 0;
F = 0;
G = 0;
H = 0;
I = 0;
i_t = 0;
J = 0;
K = 0;
L = 0;
M = 0;
N = 0;
O = 0;
o_t = 0;
P = 0;
Q = 0;
R = 0;
S = 0;
T = 0;
U = 0;
u_t = 0;
u_d = 0;
V = 0;
W = 0;
X = 0;
Y = 0;
Z = 0;
enie = 0;

exc1 = 0;
exc2 = 0;
pre1 = 0;
pre2 = 0;
punto = 0;
coma = 0;
pc = 0;
dp = 0;
comilla = 0;
guion = 0;
par1 = 0;
par2 = 0;
esp = 0;

for m = 1:length(links)
   html = urlread(char(links(m))); 
   txt = regexprep(html,'<script.*?/script>','');
   txt = regexprep(txt,'<style.*?/style>','');
   txt = regexprep(txt,'<.*?>','');
   txt = regexprep(txt,'\n','');
   txt = regexprep(txt,'Wikipedia','');
   txt = regexprep(txt,'wikipedia','');
   txt = regexprep(txt,'www.','');
   txt = regexprep(txt,'.com','');
   
   exc1 = exc1 + sum(txt(:) == '¡');
   exc2 = exc2 + sum(txt(:) == '!');
   pre1 = pre1 + sum(txt(:) == '¿');
   pre2 = pre2 + sum(txt(:) == '?');
   coma = coma + sum(txt(:) == ',');
   punto = punto + sum(txt(:) == '.');
   pc = pc + sum(txt(:) == ';');
   par1 = par1 + sum(txt(:) == '(');
   par2 = par2 + sum(txt(:) == ')');
   dp = dp + sum(txt(:) == ':');
   guion = guion + sum(txt(:) == '-');
   comilla = comilla + sum(txt(:) == '"');   
   
    A = A + sum(txt(:) == 'A' | txt(:) == 'a');
    a_t = a_t + sum(txt(:) == 'á'| txt(:) == 'Á');
    B = B + sum(txt(:) == 'B' | txt(:) == 'b');
    C = C + sum(txt(:) == 'C' | txt(:) == 'c');
    D = D + sum(txt(:) == 'D' | txt(:) == 'd');
    E = E + sum(txt(:) == 'E' | txt(:) == 'e');
    e_t = e_t + sum(txt(:) == 'é' | txt(:) == 'É');
    F = F + sum(txt(:) == 'F' | txt(:) == 'f');
    G = G + sum(txt(:) == 'G' | txt(:) == 'g');
    H = H + sum(txt(:) == 'H' | txt(:) == 'h');
    I = I + sum(txt(:) == 'I' | txt(:) == 'i');
    i_t = i_t + sum(txt(:) == 'í' | txt(:) == 'Í');
    J = J + sum(txt(:) == 'J' | txt(:) == 'j');
    K = K + sum(txt(:) == 'K' | txt(:) == 'k');
    L = L + sum(txt(:) == 'L' | txt(:) == 'l');
    M = M + sum(txt(:) == 'M' | txt(:) == 'm');
    N = N + sum(txt(:) == 'N' | txt(:) == 'n');
    O = O + sum(txt(:) == 'O' | txt(:) == 'o');
    o_t = o_t + sum(txt(:) == 'ó' | txt(:) == 'Ó');
    P = P + sum(txt(:) == 'P' | txt(:) == 'p');
    Q = Q + sum(txt(:) == 'Q' | txt(:) == 'q');
    R = R + sum(txt(:) == 'R' | txt(:) == 'r');
    S = S + sum(txt(:) == 'S' | txt(:) == 's');
    T = T + sum(txt(:) == 'T' | txt(:) == 't');
    U = U + sum(txt(:) == 'U' | txt(:) == 'u');
    u_t = u_t + sum(txt(:) == 'ú' | txt(:) == 'Ú');
    u_d = u_d + sum(txt(:) == 'ü' | txt(:) == 'Ü');
    V = V + sum(txt(:) == 'V' | txt(:) == 'v');
    W = W + sum(txt(:) == 'W' | txt(:) == 'w');
    X = X + sum(txt(:) == 'X' | txt(:) == 'x');
    Y = Y + sum(txt(:) == 'Y' | txt(:) == 'y');
    Z = Z + sum(txt(:) == 'Z' | txt(:) == 'z');
    enie = enie + sum(txt(:) == 'Ñ' | txt(:) == 'ñ');
    esp = esp + sum(txt(:) == ' ');  
end  

total = A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z+enie+a_t+i_t+e_t+o_t+u_t+u_d+...
    dp+coma+punto+par1+par2+pre1+pre2+exc1+exc2+comilla+pc+guion+esp;

probA = A/total;
probB = B/total;
probC = C/total;
probD = D/total;
probE = E/total;
probF = F/total;
probG = G/total;
probH = H/total;
probI = I/total;
probJ = J/total;
probK = K/total;
probL = L/total;
probM = M/total;
probN = N/total;
probO = O/total;
probP = P/total;
probQ = Q/total;
probR = R/total;
probS = S/total;
probT = T/total;
probU = U/total;
probV = V/total;
probW = W/total;
probX = X/total;
probY = Y/total;
probZ = Z/total;
probEnie = enie/total;
probComa = coma/total;
probPunto = punto/total;
probPC = pc/total;
probDP = dp/total;
probComilla = comilla/total;
probPar1 = par1/total;
probPar2 = par2/total;
probExc1 = exc1/total;
probExc2 = exc2/total;
probGuion = guion/total;
probPre1 = pre1/total;
probPre2 = pre2/total;
probAT = a_t/total;
probIT = i_t/total;
probET = e_t/total;
probOT = o_t/total;
probUT = u_t/total;
probUD = u_d/total;
probEsp = esp/total;


arrayProb = [probPar1 probPar2 probExc1 probExc2 probPre1 probPre2 probComa probPunto probPC probDP probComilla probGuion ...
    probAT probIT probET probUT probOT probUD probA probB probC probD probE probF probG probH probI ...
    probJ probK probL probM probN probO probP probQ probR probS probT ...
    probU probV probW probX probY probZ probEnie probEsp];
symbols = ['(' ')' '¡' '!' '¿' '?' ',' '.' ';' ':' '"' '-' 'Á' 'Í' 'É' 'Ú' 'Ó' 'Ü' 'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' ...
    'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z' 'Ñ' ' '];
symbols = lower(symbols);
arraySymbols = num2cell(symbols);


entropy = 0;

for m = 1:length(arrayProb)
   if(arrayProb(m) ~= 0)
        entropy = entropy + arrayProb(m)*log2(1/arrayProb(m));
   end
end

disp(entropy);

