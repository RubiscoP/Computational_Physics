function xm = findroot(E)
A = 1;
B = 4;
f = @(x)3-A^2*B*(B-1)/(cosh(A*x)^2)/2-E;
x = -1;
dx = 0.5;
fx0 = f(x);
err = 1e-6;
i = 0;
while (dx>err)
    i = i+1;
    x = x+dx;
    if fx0*f(x)<0
        x = x-dx;dx = dx./2;
    end
    xm = x;
end
