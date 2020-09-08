function [y,l]=potencias_error(a,v,n,error)
% Metodo de las potencias
% En cada paso se divide el vector que se obtiene por su norma
% numiter es el numero m\’{a}ximo de iteraciones
% eps es la precision fijada
%
% Si la diferencia entre dos valores consecutivos calculados de l
% es menor que eps, el programa se detiene
  numiter=n;
  eps=error;
  x=v(:);
  y=x/norm(x);
  l=0;
  for k=1:numiter
    x=a*y;
    y=x/norm(x);
    lc=x'*y;
    if abs(l-lc)<eps
      return
  end
  l=lc;
  end
return
