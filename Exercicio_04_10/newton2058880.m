function x = newton2058880(f, df,x0)
  tol = 1e-4;
  nMax = 500;
  if x0 == 0
    x = x0;
    return;
  endif
  for i = 0: nMax
    if i >= 1
      xAnt = x;  
    else
      xAnt = x0;
    endif 
    if df(xAnt) == 0
      x = -1;
      return;
    endif  
    x = xAnt - f(xAnt)/ df(xAnt);
    if abs(x - xAnt)/abs(x) < tol
      return;
    endif
    if abs(f(x))/abs(df(xAnt)) < tol
      return;
    endif
    if i > nMax
      return;
    endif
  endfor
endfunction
