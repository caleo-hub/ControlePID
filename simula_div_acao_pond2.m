%% Simula��o teste parametros PID divis�o de a�oes b=0 c=0
sw_noise = 1;
b= 0.5;c=0.5;
Simulation_Time = 800;
out_pid = sim('controle_pid_div_acao',Simulation_Time);