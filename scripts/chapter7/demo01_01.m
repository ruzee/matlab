%demo01_01
f=imread('rice.png');
figure(1)
h1=subplot(221);imhist(f);
axis([0 255 0 1500]);
h1.XTick=0:50:255;

h=imhist(f,25);
horz=linspace(0,255,25);

h2=subplot(222);
bar(horz,h);
axis([0 255 0 15000]);
h2.XTick=0:50:255;

h3=subplot(223);
stem(horz,h);
axis([0 255 0 15000]);
h3.XTick=0:50:255;

h4=subplot(224);
horz=linspace(0,255,25);
plot(horz,h,'r');
axis([0 255 0 15000]);
h4.XTick=0:50:255;

