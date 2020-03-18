clear;
I=zeros(100,100);	%产生一个正方形的黑框
I(25:75,25:75)=1;
imshow(I);
[R,xp]=radon(I,[0 45]);	%计算黑框的radon变换
figure;
subplot(121),plot(xp,R(:,1)),title('R_{0^o}(x\prime)');	%显示黑框在0?的 radon变换
subplot(122),plot(xp,R(:,2)),title('R_{45^o}(x\prime)');	%显示黑框在45?的radon变换


