function potential = VX(x)
A = 1;
B = 4;
potential = 3-A.^2.*B.*(B-1)./(cosh(A.*x).^2)./2;
