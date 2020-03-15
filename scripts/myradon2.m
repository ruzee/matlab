clear;
I=ones(100,100);	%产生一个正方形的黑框
% I(25:75,25:75)=1;
imshow(I);
[R,xp]=radon(I,[0 30 45 90]);	%计算黑框的radon变换
figure;
subplot(221),plot(xp,R(:,1)),title('R_{0^o}(x\prime)');	%显示黑框在0?的 radon变换
subplot(222),plot(xp,R(:,2)),title('R_{30^o}(x\prime)');	%显示黑框在30?的radon变换
subplot(223),plot(xp,R(:,3)),title('R_{45^o}(x\prime)');	%显示黑框在45?的radon变换
subplot(224),plot(xp,R(:,4)),title('R_{90^o}(x\prime)');	%显示黑框在90?的radon变换