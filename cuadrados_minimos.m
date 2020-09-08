function cuadrados_minimos(x,y,grado)
  a = polyfit(x,y,grado);
  for i = 0:grado
    fprintf('a%d = %f, ', i, a(grado+1-i));
  endfor
  
  fprintf('\n');
endfunction
