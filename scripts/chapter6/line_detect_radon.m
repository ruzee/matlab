%ֱ�߼��
clear;
linewidth=3;%pixel
I=zeros(200,200);
A=ones(100);
A=triu(A,-fix(linewidth/2))...
    -triu(A,fix(linewidth/2)+1);
I(101:200,1:100)=A;
figure,imshow(I);
theta=0:179;
[R,xp]=radon(I,theta);
figure,imagesc(theta,xp,R);
xlabel('{\theta}\circ');
ylabel('{\rho}');
ax=gca;
ax.XTick=0:30:180;
ax.YTick=-100:50:100;
ax.TickDir='out';
colormap(hot(128));colorbar;