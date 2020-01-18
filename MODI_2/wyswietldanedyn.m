clear;
params;

% dane ucz�ce
plot(danedynucz(:,1),danedynucz(:,2),'.r');
title('Dane dynamiczne ucz�ce');
grid on;
xlabel('u');
ylabel('y(u)');
% saveas(gcf,'picture/dane_dyn_ucz.png');

% dane ucz�ce w sterowaniu
plot(1:1:2000,danedynucz(:,1),'r');
hold on;
plot(1:1:2000,danedynucz(:,2),'b');
grid on;
title('Dane dynamiczne ucz�ce w sterowaniu');
legend('sygnal sterujacy', 'wyjscie obiektu','Location','best');
xlabel('k');
ylabel(sprintf('u(k)\ny(k)'));
hold off;
% saveas(gcf,'picture/dane_dyn_ucz_ster.png');

% dane weryfikuj�ce
plot(danedynwer(:,1),danedynwer(:,2),'.g');
title('Dane dynamiczne weryfikuj�ce');
grid on;
xlabel('u');
ylabel('y(u)');
% saveas(gcf,'picture/dane_dyn_wer.png');

% dane weryfikuj�ce w sterowaniu
plot(1:1:2000,danedynwer(:,1),'g');
hold on;
plot(1:1:2000,danedynwer(:,2),'b');
grid on;
title('Dane dynamiczne ucz�ce w sterowaniu');
legend('sygnal sterujacy', 'wyjscie obiektu','Location','best');
xlabel('k');
ylabel(sprintf('u(k)\ny(k)'));
hold off;
% saveas(gcf,'picture/dane_dyn_wer_ster.png');