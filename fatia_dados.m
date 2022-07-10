function [h_fatiado,q_fatiado,tempo] = fatia_dados(h,q,step_samples,amostragem)


[m,n] = size(h);
[r,s] = size(q);



n_amostras = abs(step_samples(1,1) - step_samples(1,2));
tempo = (0:n_amostras-1)*amostragem;

h_fatiado = zeros(m,n_amostras);
q_fatiado = zeros(r,n_amostras);



for i=1:m
        
        h_fatiado(i,:) = h(i,step_samples(i,1):step_samples(i,2) - 1 );
        q_fatiado(i,:) = q(i,step_samples(i,1):step_samples(i,2) - 1 );
end








end

