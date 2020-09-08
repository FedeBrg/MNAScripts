function [y,l]=potencias_escalado(a,v)
  % Metodo de las potencias
  % En cada paso se divide el vector que se obtiene por su norma
  % El numero de iteraciones es fijo
  numiter=100;
  x=v(:);
  y=x/norm(x);
  for k=1:numiter
    x=a*y;
    y=x/norm(x);
  end
  l=x.’*y;
return