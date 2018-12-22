function [a,b,pred] = musa_okomoto(x,y,a,b)
  s=max(size(x))
  sp=0.0001;
  sp2=0.000001;
  for i=1:500
    pred=a*log(1+b*x);
    dela=log(1+b*x);
    delb=(a*x)./(1+b*x);
    erea=(pred-y).*dela;
    era=sum(erea);
    ereb=(pred-y).*delb;
    erb=sum(ereb);
    a=a-sp*era/s;
    b=b-sp2*erb/s;
  end
endfunction

