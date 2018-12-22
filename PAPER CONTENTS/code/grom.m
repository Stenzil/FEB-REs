function [a,b,c] = grom (x,y,a,b,c)
  s=max(size(x))
  sp=0.0001;
  sp2=0.000000001;
  sp3=0.00000001;
  for i=1:5000
    pred=a*c*e.^(-b*x);
    dela=c*e.^(-b*x);
    delc=a*e.^(-b*x);
    delb=-a*c*e.^(-b*x).*x;
    erea=(pred-y).*dela;
    era=sum(erea);
    ereb=(pred-y).*delb;
    erec=(pred-y).*delc;
    erc=sum(erec);
    erb=sum(ereb);
    a=a-sp*era/s;
    b=b-sp2*erb/s;
    c=c-sp3*erc/s;
  end
endfunction

