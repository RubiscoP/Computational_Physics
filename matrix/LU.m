function [L,U] = LU(n,A)
L = zeros(n,n);
U = zeros(n,n);
for i = 1:n
    U(1,i) = A(1,i);
%     L(i,1) = A(i,1)/U(11);
end

for i = 2:n
    L(i,1) = A(i,1)/U(1,1);
end

for r = 2:n
    for i = r:n
        sigema1 = 0;
        for k = 1:r-1
            sigema1 = L(r,k)*U(k,i)+sigema1;
        end
        U(r,i) = A(r,i)-sigema1;
    end
    for  i = r+1:n
        sigema2 = 0;
        for k = 1:r-1
            sigema2 = L(i,k)*U(k,r)+sigema2;
        end
        L(i,r) = (1/U(r,r))*(A(i,r)-sigema2);
    end
end

        
    
         
            
    
