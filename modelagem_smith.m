function [G11,G22, k,tau,theta] = modelagem_smith(h,q)

[m,n] = size(h);
delta_y = zeros(m,1);
delta_q = zeros(m,1);

y_inf = zeros(m,1);
y_zero = zeros(m,1);
q_inf = zeros(m,1);
q_zero = zeros(m,1);

% y_t1 = zeros(m,1);
% y_t2 = zeros(m,1);
tau = zeros(m,1);
theta = zeros(m,1);
k = zeros(m,1);

G = zeros(m,1);


t1 = [21;20.5];
t2 = [54;48.5];
for i=1:m
    y_inf(i) = max(h(i,:));
    y_zero(i) = min(h(i,:));
    
    
% y_inf =
% 
%    25.8316
%    20.7651
% 
% 
% y_zero =
% 
%    25.0699
%    20.1173
%     
    q_inf(i) = max(q(i,:));
    q_zero(i) = min(q(i,:));
    
%     q_inf =
%     173.1158
%     70.4361
% 
% 
%     q_zero =
% 
%     169.7214
%     67.0820
    
    delta_y(i) = y_inf(i)-y_zero(i);
    
    delta_q(i) = q_inf(i)-q_zero(i);
    
    k(i) = delta_y(i)/delta_q(i);
%     y_t1(i) = 0.283*delta_y(i) + y_zero(i);
%     y_t2(i) = 0.632*delta_y(i) + y_zero(i);
    tau(i) = 1.5*(t2(i) - t1(i));
    theta(i) = t2(i) - tau(i);
    
    
    
end

G11 = tf([k(1)],[tau(1), 1],'IODelay',theta(1));
G22 = tf([k(2)],[tau(2), 1],'IODelay',theta(2));



end

