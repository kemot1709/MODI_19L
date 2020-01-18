plot (yDD);
hold on;
plot (yDDL);
legend ('dynamiczny dyskretny', 'dynamiczny dyskretny zlinearyzowany')
ylabel ('y(t)');
xlabel ('t');
axis ([0 100 -1 1]);
title ({'Ró¿nice pomiêdzy modelem dynamicznym dyskretnym, a dyskretnym ','zlinearyzowanym z du¿ym skokiem i punktem linearyzacji u=0.2'});
hold off;
%saveas(gcf,'Small02.png');