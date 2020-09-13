function x = CMDirecto(A, b)
  x = inv(A'*A)*A'*b;
endfunction