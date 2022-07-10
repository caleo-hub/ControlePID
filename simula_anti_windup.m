%% Simulação teste parametros PID com anti-windup
sw_anti_windup = 1; sw_d_filter = 0; sw_noise = 0;
Simulation_Time = 800;
out_pid = sim('controle_pid',Simulation_Time);