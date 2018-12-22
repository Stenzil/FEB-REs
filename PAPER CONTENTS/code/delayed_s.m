function [a,b] = delayed_s(x,y,a,b)
  s=max(size(x))
  sp=0.001;
  sp2=0.0000001;
  for i=1:5000
    pred=a*(1-((1+b*x).*(e.^(-b*x))));
    dela=(1-((1+b*x).*(e.^(-b*x))));
    delb=-a*(((e.^(-b*x)).*x)-((1+b*x).*(e.^(-b*x)).*x));
    erea=(pred-y).*dela;
    era=sum(erea);
    ereb=(pred-y).*delb;
    erb=sum(ereb);
    a=a-sp*era/s;
    b=b-sp2*erb/s;
  end
endfunction

