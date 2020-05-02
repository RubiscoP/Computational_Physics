function U=numerove(N, H, Q, S,U)
%N为步数
%H为步长
%Q为k^2(x)
%S为驱动项
%U为函数值数组(方程解)
%G为h^2/12
  G = H*H/12.0;
  for I = 2:1:N-1
    C0 = 1.0+G.*Q(I-1);
    C1 = 2.0-10.0.*G.*Q(I);
    C2 = 1.0+G.*Q(I+1);
    D  = G.*(S(I+1)+S(I-1)+10.0*S(I));
    UTMP = C1*U(I)-C0*U(I-1)+D;
    U(I+1) = UTMP/C2;
  end  
end
