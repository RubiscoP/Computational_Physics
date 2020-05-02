function dm = dmt(V,m)
dm = alpha_m(V) .* (1-m) - beta_m(V) .* m;
end