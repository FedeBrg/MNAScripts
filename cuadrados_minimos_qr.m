function x = cuadrados_minimos_qr(A,b)
  [m,n]=size(A);
  [Q,R]=qr(A);
  Q1=Q(:,1:n);
  R1=R(1:n,:);
  x=(R1 \ (Q1'*b));
endfunction
