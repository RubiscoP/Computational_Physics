function [H] = household(n)
x1 = vec(n);
x2 = vec(n);

e_itheta = (x1'*x2)./norm(x1'*x2);
w = (e_itheta.*x1-x2)./(norm(e_itheta.*x1-x2));

I = eye(n);
H  = (I - 2*(w*w')).*e_itheta;
