imread('text.tif');
T=imread('text.tif');
I=imbinarize(T);
b=imread('a.tif');
a=imbinarize(t);

[ma,na]=size(a); %求出 a 的大小

[mi,ni]=size(I); %求出图像的大小



N=na+ni-1;
M=ma+mi-1; %求出卷积之后图像的大小
% 
% a(M,N)=0;
% I(M,N)=0;

afft=fft2(a,M,N);
Ifft=fft2(I,M,N);

filtered=ifft2(afft.*Ifft); %利用 fft 和卷积的关系快速计算矩阵卷积

imshow(abs(filtered),[]);
filtered=filtered(1:mi,1:ni); %只保留原图像大小
filtered=filtered/max(max(filtered,[],1));
%对卷积之后的图像归一化
result=filtered>0.90; %设置门限求出匹配点
figure,imshow(result);
