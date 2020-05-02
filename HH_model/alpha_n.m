function an = alpha_n(V)
an = 0.01.*(V+55)./(1-exp(-(V+55)./10));
end
