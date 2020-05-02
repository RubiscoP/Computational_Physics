function x = guass(n,A,b)
%输入维数n，矩阵A，值b，返回解x
for k = 1:n-1%循环列
    p = 0;%初始化比较标准值p
    for i = k:n%循环行
        if(abs(A(i,k)<abs(p)))
            i0 = i;
            A = exchange(i0,k,n,A,b);%交换
            p = A(i,k);
            
%             i0 = i;
%             disp(A);
%             disp(i0);
        end     
%         t = b(k);
%         b(k) = b(i0);
%         b(i0) = t;%交换b的行
        
        b(k) = b(k)/A(k,k);%开始消元
        for j = k+1:n
            A(k,j) = A(k,j)/A(k,k);
            for i1 = k+1:n
                A(i1,j) = A(i1,j)-A(i1,j)*A(k,j);
            end
            b(j) = b(j)-A(j,k)*b(k);
        end
    end
    b(n) = b(n)/A(n,n);
    for k1 = 1:n-1
        i = n-k1;
        s = 0;
        for j = i+1:n
            s = s+A(i,j)*b(j);
        end
        b(i) = b(i)-s;
    end
    x = b;
end
end


    
    
    

            

