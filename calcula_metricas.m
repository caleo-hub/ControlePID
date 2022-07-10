function [mse,control_sm] = calcula_metricas(controle,saida,referencia)

    [m,n] = size(referencia.Data);
    mse = zeros(2,1);
    control_sm = zeros(2,1);
    
    for i=1:n
        mse(i) = immse(referencia.Data(:,i),saida.Data(:,i));
        control_sm(i) = meansqr(controle.Data(:,i));
    end
    

end

