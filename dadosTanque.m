h10 = 25;
h20 = 20;

k1 = 25; 
k2 = 25;
kac = 20;

[A1, A2] = secao_tanque(h10,h20);

q10 = k1*sqrt(h10) + kac*sqrt(h10-h20);
q20 = k2*sqrt(h20) - kac*sqrt(h10-h20);


% Modelo Linearizado pelo modelo não Linear
% A =[ -0.0553, 0.0355;
%     0.0355,-0.0577];
%  
%  
% B2 = [0.0079,     0;
%         0,  0.0079];
%  
% 
% C = [1,0;0,1];
% 
% 
% D = [0,0;0,0];
