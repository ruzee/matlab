clear;
clf;
x=linspace(0,8*pi,100);
F=inline('sin(x+cos(x+sin(x)))'); %匿名函数
y1=F(x); %sin(x+cos(x+sin(x)))
y2=0.2*x+F(x); %0.2*x+sin(x+cos(x+sin(x)))
plot(x,y1,'r-.',x,y2,'b');
ax=gca;
ax.FontName='Time New Roman';
ax.FontSize=15;
title('\it{Period and linear period function}');
text(x(48),y1(50)-0.4,'\fontsize{15}\fontname{Times New Roman}\bullet\leftarrowThe period function {\itf(x)}');
text(x(14)-0.01,y2(50)+1,'\fontsize{15}\fontname{Times New Roman}The linear period function {\itf(x)}\rightarrow\bullet ');
xlabel('x');ylabel('y');

