function [a, b, pred] = l (x, y, a, b)
  sp=0.00001
  sp2=0.000000000008
  for i=1:5000
    dela=1-(e.^(-b*x));
    delb=a*e.^(b*x);
    pred=a*(1-(e.^(-b*x)));
    era=sum((pred-y).*dela);
    erb=sum((pred-y).*delb);
    a=a-(sp*era)
    b=b-(sp2*erb)
  end
endfunction
