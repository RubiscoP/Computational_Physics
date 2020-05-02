function x = didedaifa(n,A,b)
x = zeros(n,1);
for i = 1:n
    g = zeros(1,n);
    for j = 1:n
        if j == i
            g(j) = 0;
        else
            g(j) = -A(i,j)/A(i,i);
        end
    end
    d = zeros(1,n);
    for j = 1:n
        d(j) = b(i)/A(i,i);
    end
    sum_gx = 0;
    for j = 1:n
        sum_gx = sum_gx + g(j)*x(j);
    end
    x(i) = sum_gx+d(i);
end

    
    
    
    
    
    
    
    
          
    