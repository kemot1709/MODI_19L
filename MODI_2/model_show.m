function error = model_show(daneucz, danewer, stopien)

M = ones(100,1);
Mwer = ones(100,1);
Y = daneucz(:,2);
Ywer = danewer(:,2);

for i=1:stopien
    M(:,i+1) = power(daneucz(:,1),i);
    Mwer(:,i+1) = power(danewer(:,1),i);
    w = M\Y;
    d = length(w);
    x = linspace(-1,1,200);
    y = 0;
    for i = 1:d
        y = y + w(i,1)*power(x,i-1);
    end

    % dane ucz¹ce
    plot(daneucz(:,1),daneucz(:,2),'.r');
    hold on
    plot(x,y,'b');
    title(sprintf('Model stopnia %i dla danych ucz¹cych',d-1));
    grid on;
    xlabel('u');
    ylabel('y(u)');
    hold off;
    saveas(gcf,sprintf('picture/rys%iucz.png',d-1));

    % dane weryfikuj¹ce
    plot(danewer(:,1),danewer(:,2),'.g');
    hold on
    plot(x,y,'b');
    title(sprintf('Model stopnia %i dla danych weryfikuj¹cych',d-1));
    grid on;
    xlabel('u');
    ylabel('y(u)');
    hold off;
    saveas(gcf,sprintf('picture/rys%iwer.png',d-1));

    % oblicznaie b³êdu
    error(i,:) = [(M*w-Y)'*(M*w-Y) (Mwer*w-Ywer)'*(Mwer*w-Ywer)];
end
