clear;
I=ones(200,200);	%产生一个正方形的黑框

x=linspace(-50,50,200);
[X,Y]=meshgrid(x);
Z=(X.^2+Y.^2)>=400;
I=I.*Z;%I=~I;
[R,xp]=radon(I,[0 30 45 60 90]);	%计算黑框的radon变换
figure;
subplot(321),plot(xp,R(:,1)),title('R_{0^o}(x\prime)');	%显示黑框在0?的 radon变换
subplot(322),plot(xp,R(:,2)),title('R_{30^o}(x\prime)');	%显示黑框在45?的radon变换
subplot(323),plot(xp,R(:,3)),title('R_{45^o}(x\prime)');	%显示黑框在0?的 radon变换
subplot(324),plot(xp,R(:,4)),title('R_{60^o}(x\prime)');	%显示黑框在45?的radon变换
subplot(325),plot(xp,R(:,5)),title('R_{90^o}(x\prime)');	%显示黑框在45?的radon变换
subplot(326),imshow(I);