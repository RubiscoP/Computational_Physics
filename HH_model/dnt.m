function dn = dnt(V,n)
dn = alpha_n(V) .* (1-n) - beta_n(V) .* n;
end