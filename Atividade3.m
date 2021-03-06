%% Carregando dados
clear,close all, clc
dadosTanque();
load('dados_tanque.mat');
h1 = h1_ruido(1:end-1);
h2 = h2_ruido(1:end-1);

fs = 2;
T = 0.5;
L = size(h1,2);
t = (0:L-1)*T;

%% Visualizando Dados 
    visualiza_dados_originais(t,h1,h2,qin1,qin2)
    
%% Filtrando Ruido
h_bruto = [h1;h2];
q_bruto = [qin1;qin2];
%[b,a] = especifica_filtro();
[h_filtrado] = filtra_ruido(h_bruto);

%% Fatiando dados

step1_up = 600;
step1_down = 1200;
step2_up = 1800;
step2_down = 2400;

step_samples = [step1_up, step1_down; step2_up,step2_down];
[h,q,t] = fatia_dados(h_filtrado,q_bruto,step_samples,T);

visualiza_dados_filtrados(h,t)

%% Modelagem do sistema
% Utilizando t?cnica de Smith

[G11,G22,k,tau,theta] = modelagem_smith(h,q);

visualiza_modelagem(h,t,G11,G22)

%% Controlador
%Sintonia CHR ? Sem sobressinal SERVO
[Kp,Ki,Td] = calcula_parametros_PID(k,tau,theta);
pid_var.Kp = Kp;
pid_var.Ki = Ki;
pid_var.Td = Td;

pid_var_bus_info = Simulink.Bus.createObject(pid_var);
pid_var_bus = evalin('base', pid_var_bus_info.busName);




%% Simula??es Parte A
simula_pid();
[mse_pid,control_sm_pid] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinal de Sa?da e Controle PID');

simula_anti_windup();
[mse_awu,control_awu] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinais de Interesse com Anti-Wind Up');

simula_noise();
[mse_nse,control_nse] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinais de Interesse com Ru?do Branco');

simula_d_filter();
[mse_dft,control_dft] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinais de Interesse com Filtro no Derivativo');

%% Simula??es Parte B

ts = 0.01;
simula_div_acao_trad();
[mse_div,control_div] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinal de Sa?da e Controle PID Divis?o de A??es');

simula_div_acao_pond();
[mse_pond,control_pond] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinal de Sa?da e Controle P e D na Realimenta??o');

simula_div_acao_pond2();
[mse_pond2,control_pond2] = calcula_metricas(controle,saida,referencia);
plot_simulacao(controle,saida,referencia,'Sinal de Sa?da e Controle P e D Ponderados');


salva_figuras()










