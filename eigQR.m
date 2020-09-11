function v = eigQR(A,n,error)
  
  numiter=n;
  eps=error;
  Ak = A;
  
 
  for k=1:numiter
    [Q R] = qr(Ak);
    Ak1 = Q*R;
    v = diag(Ak1);

    if abs(diag(Ak)-diag(Ak1))<eps
      return
  end
  Ak = Ak1;
  
  end
return
  
endfunction
