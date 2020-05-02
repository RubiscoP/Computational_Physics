function g = guiyi(u)
U = u.^2;
I = simpson_int(U);
g = 1/I;
end