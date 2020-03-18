clc;
clear;
I=imread('lena.jpg');
%I=rgb2gray(I);

%I=imnoise(I, 'gaussian', 0, 0.01);    %%给图像添加高斯噪声；
subplot(231),imshow(I);
title('原图像');

s=fftshift(fft2(I));   %%低频部分移动到中心

subplot(234),imshow(log(abs(s)+1),[]);
title('图像傅里叶变换取对数所得频谱');

[a,b]=size(s);
a0=round(a/2);
b0=round(b/2);

%%%%%%%低通滤波
d=min(a0,b0)/10;    %滤波的范围，以频谱图上的欧氏距离为依据
filter=zeros(a,b);

for i=1:a          %设置低通滤波
     for j=1:b
         distance=sqrt((i-a0)^2+(j-b0)^2);
         if distance<=d
             h=1;
         else
             h=0;
         end
         filter(i,j)=h;
     end
end

Lp=filter.*s;

subplot(235),imshow(log(abs(Lp)+1),[]);
title('低通滤波频谱');

LPJ=uint8(real(ifft2(ifftshift(Lp))));
subplot(232),imshow(LPJ);
title('低通滤波所得图像');

Hp=(~filter).*s;

subplot(236),imshow(log(abs(Hp)+1),[]);
title('高通滤波频谱');

HPJ=uint8(real(ifft2(ifftshift(Hp))));
subplot(233),imshow(HPJ);
title('高通滤波所得图像');

new=Hp.*1.5+Lp.*1;
NewIm=uint8(real(ifft2(ifftshift(new))));
figure,imshow(NewIm);
title('增强高频信号所得图像');