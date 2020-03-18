%% demo01_02
f=imread('cameraman.tif');
figure;
subplot(221);imshow(f);
subplot(222);imhist(f);ylim('auto');
g=histeq(f,256);
subplot(223);imshow(g);
subplot(224);imhist(g);
ylim('auto');

%% draw  trans curve
figure;
hnorm=imhist(f)./numel(f);
cdf=cumsum(hnorm);
x=linspace(0,1,256);
plot(x,cdf);
axis([0 1 0 1]);
ax=gca;
ax.XTick=0:0.2:1;
ax.YTick=0:0.2:1;
xlabel('\fontname{Times New Roman}\fontsize{15}\itinput intensity values');
ylabel('\fontname{Times New Roman}\fontsize{15}\itoutput intensity values');
text(x(80)-.03,cdf(80),['\fontname{Times New Roman}\fontsize{15}'...
'\bullet\leftarrow\itoutput intensity values']);