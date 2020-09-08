function [P,D,X] = autovec_autoval(A,x)
  [P,D] = eig(A);
  X = P*D^1000*inv(P)*x;
  [P,D,X]
endfunction
