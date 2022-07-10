function [b,a] = especifica_filtro()
    %% Especificação do Filtro
    Wc = 0.03;
    ordem = 5;
    atenuacao_rejeicao = 60;
    [b,a] = cheby2(ordem,atenuacao_rejeicao,Wc);
    
end

