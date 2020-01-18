clear;
params;

% dane statystyczne
plot(danestat(:,1),danestat(:,2),'.b');
title('Dane statyczne');
grid on;
xlabel('u');
ylabel('y(u)');
% saveas(gcf,'picture/dane_stat.png');

% dane ucz�ce
plot(daneucz(:,1),daneucz(:,2),'.r');
title('Dane ucz�ce');
grid on;
xlabel('u');
ylabel('y(u)');
% saveas(gcf,'picture/dane_ucz.png');

% dane weryfikuj�ce
plot(danewer(:,1),danewer(:,2),'.g');
title('Dane weryfikuj�ce');
grid on;
xlabel('u');
ylabel('y(u)');
% saveas(gcf,'picture/dane_wer.png');
