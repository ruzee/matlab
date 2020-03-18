%demo32
%多层分解与重构
load leleccum;
s=leleccum(1:3920);
ls=length(s);
plot(s),title('Original signal');

[c,l]=wavedec(s,3,'db1');
%appcoef提取近似分量系数
ca3=appcoef(c,l,'db3',3);
figure,plot(ca3),title('the appromximation signal at level 3');

ca2=appcoef(c,l,'db3',2);
figure,plot(ca2),title('the appromximation signal at level 2');
%detcoef函数提取信号第3、2、1层的细节分量系数
cd3=detcoef(c,l,3);
cd2=detcoef(c,l,2);
cd1=detcoef(c,l,1);

figure,plot(cd3),title('detail signal coef at level 3');
figure,plot(cd2),title('detail signal coef at level 2');
figure,plot(cd1),title('detail signal coef at level 1');

%利用wrcoef函数重构信号第3层的近似信号
a3=wrcoef('a',c,l,'db1',3);
a2=wrcoef('a',c,l,'db1',2);
a1=wrcoef('a',c,l,'db1',1);
figure,plot(a3),title('approximated signal at level 3');
figure,plot(a2),title('approximated signal at level 2');
figure,plot(a1),title('approximated signal at level 1');

%利用wrcoef函数重构信号第3、2、1层的细节信号
d3=wrcoef('d',c,l,'db1',3);
figure,plot(d3'),title('the detail signal at level 3');

d2=wrcoef('d',c,l,'db1',2);
figure,plot(d2'),title('the detail signal at level 2');

d1=wrcoef('d',c,l,'db1',1);
figure,plot(d1'),title('the detail signal at level 1');
