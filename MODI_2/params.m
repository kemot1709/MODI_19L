% Tomasz Indeka
% 
% MODI, projekt 2, zadanie 11


% Wczytanie danych
danestat = fscanf(fopen('danestat11.txt','r'), '%f %f',[2 Inf])';
danedynucz = fscanf(fopen('danedynucz11.txt','r'), '%f %f',[2 Inf])';
danedynwer = fscanf(fopen('danedynwer11.txt','r'), '%f %f',[2 Inf])';

% podzia³ na dane ucz¹ce i weryfikuj¹ce
daneucz=[danestat(1:2:200,1),danestat(1:2:200,2)];
danewer=[danestat(2:2:200,1),danestat(2:2:200,2)];