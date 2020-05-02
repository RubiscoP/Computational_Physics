function [A] = exchange(i0,k,n,A,b)
for j = k:n
    t = A(k,j);
    A(k,j) = A(i0,j);
    A(i0,j) = t;%交换A的行
    
    t1 = b(k);
    b(k) = b(i0);
    b(i0) = t1;%交换b的行
end
end

    