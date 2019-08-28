% aproximaPi0000000.m é uma function que utiliza uma fórmula resursiva para
% aproximar a constante pi
% Entrada: 
%         n -> a quantidade de termos utilizados da s�rie de Taylor 
%                   para estimar a constante pi
% Saída:
%          z -> o valor estimado de pi


function z = aproximaPi2058880(n)
   
  z = 2;
  for i = 2:n
    z = 2.^(i-1/2)*sqrt(1 - sqrt(1 - 4.^(1 - i)*z.^2));
  end 


