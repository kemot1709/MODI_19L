ystat = K*((alfa1 * u) + (alfa2 * (u.^2)) + (alfa3 * (u.^3)) + (alfa4 * (u.^4)));
plot (u,ystat);
hold on;
ylabel ('y(u)');
xlabel ('u');
title ('Charakterystyka statyczna modelu');
hold off;
%saveas(gcf,'Stat.png');