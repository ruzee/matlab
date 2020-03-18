%Demo31
%单层分解与重构
load leleccum;
s=leleccum(1:3920);
ls=length(s);
plot(s),title('Original signal');
[ca1,cd1]=dwt(s,'db1');
figure,plot(ca1),title('Appromiation signal coef at level 1');
figure,plot(cd1),title('detail signal coef at level 1');

a1=upcoef('a',ca1,'db1',1);
d1=upcoef('d',cd1,'db1',1);
figure,plot(a1),title('constructed Appromiation signal coef at level 1');
figure,plot(d1),title('constructed detail signal coef at level 1');

figure,plot(a1+d1),title('sum of Appromiation and detail signal coef at level 1 same as s ');

a0=idwt(ca1,cd1,'db1',ls);
figure,plot(a0),title('idwt reconstruction signal');% compare with a1+d1
