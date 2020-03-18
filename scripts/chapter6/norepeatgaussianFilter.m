clear;clc
f=zeros(256);%产生上白下黑的图像
f(1:128,:)=1;
subplot(121),imshow(f),title('原始图像');
F=fft2(f,512,512);%  填充0，使图像为原来的4倍
h=fspecial('gaussian',[512 512],10);%高斯滤波器
H=fft2(h);  
G=abs(H).*F;
g=ifft2(G);
subplot(122),imshow(g(1:256,1:256)),title('有填充频率域滤波结果');
g(:,256)=1;
g(256,:)=1;
figure,imshow(g);


