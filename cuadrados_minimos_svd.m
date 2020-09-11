function B = cuadrados_minimos_svd (A,c)
  [U S V] = svd(A);
  [rowS colS] = size(S);
  
  Scruz = S';
  
  for i = 1:colS
      aux = 1/Scruz(i,i);
      Scruz(i,i) = aux;
  endfor
  
  result = V*Scruz*U';
  
  ## devuelve en orden a,b,c de por ejemplo a*cos(x)+b
  B = result*c
endfunction
