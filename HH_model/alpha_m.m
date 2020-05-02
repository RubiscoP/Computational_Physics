function am = alpha_m(V)
am = 0.1.*(V+40)./(1-exp(-(V+40)./10));
end