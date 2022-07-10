function [Kp,Ki,Td] = calcula_parametros_PID(k,tau,theta)

[m,n] = size(k);
%Sintonia CHR – Sem sobressinal SERVO

Kp = [];
Ki = [];
Td = [];
for i=1:m
    Kp = blkdiag(Kp, 0.6*tau(i)/(k(i)*theta(i)));
    Ki = blkdiag(Ki,1/tau(i));
    Td = blkdiag(Td,theta(i)/2);
    
end


end

