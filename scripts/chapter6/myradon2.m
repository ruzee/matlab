clear;
I=ones(100,100);	%����һ�������εĺڿ�
% I(25:75,25:75)=1;
imshow(I);
[R,xp]=radon(I,[0 30 45 90]);	%����ڿ��radon�任
figure;
subplot(221),plot(xp,R(:,1)),title('R_{0^o}(x\prime)');	%��ʾ�ڿ���0?�� radon�任
subplot(222),plot(xp,R(:,2)),title('R_{30^o}(x\prime)');	%��ʾ�ڿ���30?��radon�任
subplot(223),plot(xp,R(:,3)),title('R_{45^o}(x\prime)');	%��ʾ�ڿ���45?��radon�任
subplot(224),plot(xp,R(:,4)),title('R_{90^o}(x\prime)');	%��ʾ�ڿ���90?��radon�任