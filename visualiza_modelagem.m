function [out] = visualiza_modelagem(h,t,G11,G22)
    %% Visualizando Dados 
    [h1_modelo] = 3.3944*step(G11,t) +25.0699;
    [h2_modelo] = 3.3541*step(G22,t) +20.1173;
    figure('Name','Modelagem do sistema')
    subplot(2,1,1);
    hold on
    grid on
    plot(t,h(1,:),'LineWidth',1)
    plot(t,h1_modelo,'LineWidth',1)
    title('Nível')
    xlabel('tempo [s]')
    ylabel('Altura [cm]')
    legend('h1','h1 modelo','Location','Northeast');
    
    
    subplot(2,1,2);
    hold on
    grid on
    plot(t,h(2,:),'LineWidth',1)
    plot(t,h2_modelo,'LineWidth',1)
    title('Nível')
    xlabel('tempo [s]')
    ylabel('Altura [cm]')
    legend('h2','h2 modelo','Location','Northeast');
    sgtitle('Modelagem do sistema')

end