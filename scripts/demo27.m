%demo 27
load leleccum;
sig=leleccum(1:3920);
[c,l]=wavedec(sig,5,'sym4');
d=detcoef(c,l);
plot(d);
d1=detcoef(c,l,1);
figure,plot(d1);
d2=detcoef(c,l,2);
figure,plot(d2);
