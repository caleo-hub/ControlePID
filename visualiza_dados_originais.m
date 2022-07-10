function  out = visualiza_dados_originais(t,h1,h2,qin1,qin2)
  %% Visualizando Dados 
    figure('Name','Dados Tanque Original')
    subplot(2,1,1);
    hold on
    grid on
    plot(t,h1,'LineWidth',1)
    plot(t,h2,'LineWidth',1)
    title('Nível')
    xlabel('tempo [s]')
    ylabel('Altura [cm]')
    legend('h1','Location','Northeast');
    subplot(2,1,2);
    hold on
    grid on
    plot(t,qin1,'LineWidth',1)
    plot(t,qin2,'LineWidth',1)
    title('Vazões de entrada')
    ylabel('Vazão [cm3/s]')
    xlabel('tempo [s]')
    legend('h2','Location','Northeast');

    

end




