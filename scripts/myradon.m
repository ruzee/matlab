clear;
I=zeros(100,100);	%����һ�������εĺڿ�
I(25:75,25:75)=1;
imshow(I);
[R,xp]=radon(I,[0 45]);	%����ڿ��radon�任
figure;
subplot(121),plot(xp,R(:,1)),title('R_{0^o}(x\prime)');	%��ʾ�ڿ���0?�� radon�任
subplot(122),plot(xp,R(:,2)),title('R_{45^o}(x\prime)');	%��ʾ�ڿ���45?��radon�任


