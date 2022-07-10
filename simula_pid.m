%% Simulação teste parametros PID
sw_anti_windup = 0; sw_d_filter = 0; sw_noise = 0;
Simulation_Time = 800;
out_pid = sim('controle_pid',Simulation_Time);