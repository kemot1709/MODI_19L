plot (yDC);
hold on;
plot (yDD);
axis ([0 100 -8 1]);
legend ('dynamiczny ci¹g³y', 'dynamiczny dyskretny')
ylabel ('y(t)');
xlabel ('t');
title ('Ró¿nice pomiêdzy modelem dynamicznym ci¹g³ym, a dyskretnymz ze œrednim okresem próbkowania');
hold off;
%saveas(gcf,'Dyskr3.png');