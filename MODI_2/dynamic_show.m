function error = dynamic_show (danedynucz, danedynwer, stopien)

error = zeros(stopien,4);
for i=1:stopien
    clear w;
    clear M;
    clear Y;
    clear Mwer;
    
    M=zeros(2000-i,2*i);
    Mwer=zeros(2000-i,2*i);
    for j=1:i
        M(:,j) = danedynucz((i-j+1):(2000-j),1);
        M(:,j+i) = danedynucz((i-j+1):(2000-j),2);
        Mwer(:,j) = danedynwer((i-j+1):(2000-j),2);
        Mwer(:,j+i) = danedynwer((i-j+1):(2000-j),2);
    end
    Y = danedynucz((i+1):2000,2);
    Ywer = danedynwer((i+1):2000,2);
    w = M\Y;
    d = length(w);
    
    y = zeros(i+1,1);
    yr = zeros(i+1,1);
    ywer = zeros(i+1,1);
    yrwer = zeros(i+1,1);
    for j = i+1:2000
        y(j) = 0;
        yr(j) = 0;
        ywer(j) = 0;
        yrwer(j) = 0;
        for k = 1:i
            y(j) = y(j) + w(k,1)*danedynucz(j-k,1)+w(k+i,1)*danedynucz(j-k,2);
            yr(j) = yr(j) + w(k,1)*danedynucz(j-k,1)+w(k+i,1)*yr(j-k);
            ywer(j) = ywer(j) + w(k,1)*danedynwer(j-k,1)+w(k+i,1)*danedynwer(j-k,2);
            yrwer(j) = yrwer(j) + w(k,1)*danedynwer(j-k,1)+w(k+i,1)*yrwer(j-k);
        end
        % oblicznaie b³êdu
        error(i,:) = [error(i,1)+(y(j)-Y(j-i))^2 error(i,2)+(ywer(j)-Y(j-i))^2 error(i,3)+(yr(j)-Y(j-i))^2 error(i,1) + (yrwer(j)-Y(j-i))^2];
    end

    % dane ucz¹ce
    plot(1:1:2000,danedynucz(:,2),'.r');
    hold on
    plot(1:1:2000,y,'b');
    plot(1:1:2000,yr,'c');
    title(sprintf('Model dynamiczny stopnia %i dla danych ucz¹cych',i));
    legend('dane ucz¹ce', 'model bez rekurencji', 'model rekurencyjny','Location', 'best');
    grid on;
    xlabel('k');
    ylabel('y(k)');
    hold off;
%     saveas(gcf,sprintf('picture/rys_dyn%iucz.png',i));

    % dane weryfikuj¹ce
    plot(1:1:2000,danedynwer(:,2),'.r');
    hold on
    plot(1:1:2000,ywer,'b');
    plot(1:1:2000,yrwer,'c');
    title(sprintf('Model dynamiczny stopnia %i dla danych weryfikuj¹cych',i));
    legend('dane weryfikuj¹ce', 'model bez rekurencji', 'model rekurencyjny','Location', 'best');
    grid on;
    xlabel('k');
    ylabel('y(k)');
    hold off;
%     saveas(gcf,sprintf('picture/rys_dyn%iwer.png',i));

    % oblicznaie b³êdu
%     error(i,:) = [(M*w-Y)'*(M*w-Y) (Mwer*w-Ywer)'*(Mwer*w-Ywer)];
end