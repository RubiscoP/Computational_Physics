function [A] = exchange(i0,k,n,A,b)
for j = k:n
    t = A(k,j);
    A(k,j) = A(i0,j);
    A(i0,j) = t;%����A����
    
    t1 = b(k);
    b(k) = b(i0);
    b(i0) = t1;%����b����
end
end

    