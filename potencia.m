function [x,l,n]=potencia(a,v)
% Metodo de las potencias aplicado a una matriz a, a partir de un vector v
% Devuelve un autovector x y el autovalor l de modulo maximo
  numiter=n;
  x=v(:); %Esta orden hace de v un vector columna, y lo llama x
  for k=1:numiter
    x=a*x;
    [m,p]=max(abs(x));
    l=x(p);
    x=1/l*x;
  end
return