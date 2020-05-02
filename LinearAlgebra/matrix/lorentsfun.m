function dy = lorentsfun(t,y)
a1 = 0.73;
a2 = 0.34;

dy = zeros(2,1);
dy(1) = -a1*y(2);
dy(2) = a2*y(1);
end