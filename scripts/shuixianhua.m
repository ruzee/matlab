clear;
t=0:pi/50:2*pi;
y=sin(t);
plot(t,y);
axis([0 2*pi -1.2 1.2]);
text(t(26),y(26)+0.01,'\fontsize{16}\fontname{Times New Roman}\bullet\leftarrowmaxvalue \it{sin(t)}');
title('y=sin(t)');
xlabel('x');
ylabel('y');