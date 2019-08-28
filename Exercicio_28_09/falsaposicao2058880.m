function [x k] = falsaposicao2058880(f, a, b)
  Nmax = 200;
  epsilon = 10.^(-4);
  k = 1;
  if f(a) * f(b) > 0
    x = -1;
    k = 0;
    return;
  endif
  for i = 0: Nmax
    x = (a * f(b) - b * f(a))/ (f(b) - f(a));
    if f(a) * f(x) < 0
      b = x;
    else
      a = x;
    endif  
    if abs(b - a) < epsilon
      return;
    endif
    if abs(f(x)) < epsilon
      return;
    endif
    if k > Nmax
      return;
    endif
    k++;
  endfor 
endfunction
