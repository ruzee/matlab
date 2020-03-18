x=0:pi/50:4*pi;
y=sin(4*x);
plot(x,y);
ax=gca;%存储当前坐标区
ax.FontName='Times New Roman';
ax.FontSize=15;
ax.TickDir='out';
ax.TickLength=[0.02 0.02];
ax.YLim=[-2 2];
