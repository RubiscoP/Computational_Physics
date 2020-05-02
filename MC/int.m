N = 10000;
a = 0;
b = 0.5;
M = a + (b-a).*rand(3,N);
p = M(1,:);
q = M(2,:);
r = M(3,:);
count = 0;

for i = 1:N
    if p(i)^2+q(i)^2+r(i)^2<0.5^2 ...
            && p(i)^2+q(i)^2>0.3^2
    count = count + 1;
    end
end

ratio = count/N;
V = 0.5^3*ratio;
Vtol = 8*V;
disp(Vtol);
    
        
        
        