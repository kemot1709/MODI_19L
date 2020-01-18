% SET ulin
ystatlin = K*((alfa1 * u) + (alfa2 * (ulin^2 + 2*ulin*(u-ulin))) + (alfa3 * (ulin^3 + 3*(ulin^2)*(u-ulin))) + (alfa4 * (ulin^4 + 4*(ulin^3)*(u-ulin))));
ystat = K*((alfa1 * u) + (alfa2 * (u.^2)) + (alfa3 * (u.^3)) + (alfa4 * (u.^4)));
plot (u,ystat);
hold on;
plot (u,ystatlin);
ylabel ('y(u)');
xlabel ('u');
legend ('charakterystyka statyczna', 'charakterystyka statyczna zlinearyzowana');
title ('Charakterystyka statyczna nieliniowa i zlinearyzowana w pukcie u=-1');
hold off;
%saveas(gcf,'Stat-1.png');