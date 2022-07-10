function [out] = visualiza_dados_filtrados(h,t)
    %% Visualizando Dados 
    figure('Name','Dados Tanque Filtrado')
    subplot(2,1,1);
    hold on
    grid on
    plot(t,h(1,:),'LineWidth',1)
    title('Nível')
    xlabel('tempo [s]')
    ylabel('Altura [cm]')
    legend('h1','Location','Northeast');
    subplot(2,1,2);
    hold on
    grid on
    plot(t,h(2,:),'LineWidth',1)
    title('Nível')
    xlabel('tempo [s]')
    ylabel('Altura [cm]')
    legend('h2','Location','Northeast');


end

