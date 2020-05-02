function U=numerove_inv(N, H, Q, S,U)
%NΪ����
%HΪ����
%QΪk^2(x)
%SΪ������
%UΪ����ֵ����(���̽�)
%GΪh^2/12
  G = H*H/12.0;
  for I = N-1:-1:2
    C0 = 1.0+G.*Q(I-1);
    C1 = 2.0-10.0.*G.*Q(I);
    C2 = 1.0+G.*Q(I+1);
    D  = G.*(S(I+1)+S(I-1)+10.0*S(I));
    U(I-1) = (D+C1.*U(I)-C2.*U(I+1))./C0;
  end  
end
