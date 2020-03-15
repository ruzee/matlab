clear;
I=ones(200,200);	%����һ�������εĺڿ�

x=linspace(-50,50,200);
[X,Y]=meshgrid(x);
Z=(X.^2+Y.^2)>=400;
I=I.*Z;%I=~I;
[R,xp]=radon(I,[0 30 45 60 90]);	%����ڿ��radon�任
figure;
subplot(321),plot(xp,R(:,1)),title('R_{0^o}(x\prime)');	%��ʾ�ڿ���0?�� radon�任
subplot(322),plot(xp,R(:,2)),title('R_{30^o}(x\prime)');	%��ʾ�ڿ���45?��radon�任
subplot(323),plot(xp,R(:,3)),title('R_{45^o}(x\prime)');	%��ʾ�ڿ���0?�� radon�任
subplot(324),plot(xp,R(:,4)),title('R_{60^o}(x\prime)');	%��ʾ�ڿ���45?��radon�任
subplot(325),plot(xp,R(:,5)),title('R_{90^o}(x\prime)');	%��ʾ�ڿ���45?��radon�任
subplot(326),imshow(I);