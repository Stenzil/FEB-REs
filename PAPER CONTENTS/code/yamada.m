funcxion [a,b,al] = yamada(x,y,a,b,al)
  s=max(size(x))
  sp=0.01;
  sp2=0.000001;
  sp3=0.0000000001;
  for i=1:5000
    pred=a*b*(e.^(al*x)-e.^(-b*x))/(a+b);
    dela=((b*(e.^(al*x)-e.^(-b*x)))/(a+b))-(((a*b*(e.^(al*x)-e.^(-b*x))))/((a+b)^2));
    delb=((((a*(e.^(al*x)-e.^(-b*x)))+a*b*(e.^(0-b*x)).*x)))/(a+b)-((a*b*(e.^(al*x)-e.^(-b*x))))/((a+b)^2);
    delal=a*b*(e.^(al*x)).*x/(a+b);
    erea=(pred-y).*dela;
    era=sum(erea);
    ereb=(pred-y).*delb;
    erb=sum(ereb);
    ereal=(pred-y).*delal;
    eral=sum(ereal);
    a=a-sp*era/s;
    b=b-sp2*erb/s;
    al=al-sp3*eral/s;
  end
endfuncxion

