function x = guass1(n,A,b)
%����ά��n������A��ֵb�����ؽ�x
for k = 1:n-1%ѭ����
    p = A(k,k);%��ʼ���Ƚϱ�׼ֵp
    for i = k:n%ѭ����
        if(abs(A(i,k)>abs(p)))
            i0 = i;
            A = exchange(i0,k,n,A,b);%����
            p = A(i0,k);
            b(k) = b(k)/A(k,k);%��ʼ��Ԫ
            for j = k+1:n
                A(k,j) = A(k,j)/A(k,k);
                for i1 = k+1:n
                    A(i1,j) = A(i1,j)-A(i1,j)*A(k,j);
                end
            b(j) = b(j)-A(j,k)*b(k);
            end
        end   
    end     

    b(n) = b(n)/A(n,n);%�ش�
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
