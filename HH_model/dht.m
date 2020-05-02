function dh = dht(V,h)
dh = alpha_h(V) .* (1-h) - beta_h(V) .* h;
end