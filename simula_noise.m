%% Simula??o teste parametros PID com anti-windup e ru?do
sw_anti_windup = 1; sw_d_filter = 0; sw_noise = 1;
Simulation_Time = 800;
out_pid = sim('controle_pid',Simulation_Time);