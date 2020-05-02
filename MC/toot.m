f = @(x) exp(-x^3) - tan(x) +800;
N = 10000;
a = 0;
b = pi/2;
n = 0;
for i = 1 : N
    c = rand();
    if f(a+(b-a)*c)<=0
        n = n+1;
    end
end
p = n/N;
if f(a)<0
    x = a+(b-a)*p;
else
    if f(a)>0
        x = a+(b-a)*(1-p);
    end
end
disp(x);
