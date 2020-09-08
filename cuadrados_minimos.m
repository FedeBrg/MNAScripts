function cuadrados_minimos(x,y,grado)
  a = polyfit(x,y,grado);
  for i = 0:grado
    fprintf('%f * X^%d', a(grado+1-i), i);
    if(i != grado)
       fprintf(' + ');
    endif
  endfor
  
  fprintf('\n');
endfunction
