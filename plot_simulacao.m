function out = plot_simulacao(controle,saida,referencia,nome_simulacao)
figure('Name',nome_simulacao)

subplot(2,1,1)
plot(controle.Time,controle.Data,'LineWidth',1)
grid on
xlabel('tempo(s)');
ylabel('Vazão (cm3/s)');
legend('q1','q2','Location','Northeast');

subplot(2,1,2)
plot(saida.Time,saida.Data,'LineWidth',1)
hold on
grid on
plot(referencia.Time,referencia.Data,'--','LineWidth',1)
xlabel('tempo(s)');
ylabel('Nível (cm)');
legend('h1','h2','rh1','rh2','Location','Northeast');

sgtitle(nome_simulacao)


end

