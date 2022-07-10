function u = pid_div_acao(y,r,b,c Kp,Ki,Td)
persistent e_d_p e_acum_p acao_d_p

[m,n] = size(Kp)
    if isempty(e_d_p)
        e_d_p = zeros(m,1);
    end
    
    if isempty(e_acum_p)
        e_acum_p = zeros(m,1);
    end
    
    if isempty(acao_d_p)
        acao_d_p = zeros(m,1);
    end
        

u = zeros(m,1);

Tf = 100;
h = 0.01;
a = h/(Tf+h);


for i=1:m
    e_acum = (r(i)-y(i)) + e_acum_p(i);
    acao_p = b*r(i)-y(i);
    acao_i = Ki(i)*e_acum(i)*h;
    acao_d = ((1-a)*acao_d_p(i)+a*Td(i)*(c*r(i)-y(i)-e_d_p(i))/h);
    
    u(i) = Kp(i)*(acao_p + acao_i + acao_d);
    
    acao_d_p(i) = acao_d;
    e_acum_p(i) = e_acum;
    e_d_p(i) = c*r(i)-y(i);
    
end




end

