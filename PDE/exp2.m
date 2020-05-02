a2 = 50;
b = 5;
l = 1;
[x,t] = meshgrid(0:0.01:1,0:0.000001:0.0005);

an = @(X)(2/l).*(X-l/2).^2.*exp(-(b.*X/2.*a2)).*sin(n.*pi/l.*(X));
u = 0;
for n = 1:30
    An = integral(an,0,l);
    un = An.*(exp(-(n.^2.*pi.^2.*a2/l.^2+b.^2/(4.*a2)).*t)...
        .*exp(b.*x/(2.*a2)).*sin(n.*pi/l.*(x)));
    u = u+un;
end
mesh(x,t,u);


    