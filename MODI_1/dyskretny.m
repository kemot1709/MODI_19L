plot (yDC);
hold on;
plot (yDD);
axis ([0 100 -8 1]);
legend ('dynamiczny ci�g�y', 'dynamiczny dyskretny')
ylabel ('y(t)');
xlabel ('t');
title ('R�nice pomi�dzy modelem dynamicznym ci�g�ym, a dyskretnymz ze �rednim okresem pr�bkowania');
hold off;
%saveas(gcf,'Dyskr3.png');