function [xl,ul] = int_left(xturn)
% global tol;
global C;
global e1;
nl = 1000;
xl = linspace(-1,xturn,nl);%��ѡ�������ֱ߽�
hl = xl(2) - xl(1);
ul = zeros(1,nl);
ul(1) = 0;
ul(2) = 0+0.0001;
ql = zeros(1,nl);
for i = 1:nl
    ql(i) = C.*(e1-VX(xl(i)));
end%����k^2
sl(1:nl) = 0;%����s
ul = numerove(nl,hl,ql,sl,ul);%����numerove�������һ���
%plot(xl,ul);