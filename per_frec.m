function [p f] = per_frec(Y,X)
  [M I]  = max(Y);
  [M I2] = max(Y(I+1:size(Y)(2)));
  
  p = X(I+I2) - X(I);
  f = 1/p; 
endfunction
