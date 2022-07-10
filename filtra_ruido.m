function [h_filtrado] = filtra_ruido(h)
%% Filtrando Ruido

[m,n] = size(h);
h_filtrado = zeros(m,n);
for i=1:m
    %h_filtrado(i,:) = filtfilt(b,a,h(i,:));
    h_filtrado(i,:) = smoothdata(h(i,:));
end




end

