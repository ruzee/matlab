clear;
x=(-1:0.01:1)*pi;
len=length(x);

y1=cos(x);
I1_V=repmat(y1,len,1);%vertical
I1_H=imrotate(I1_V,90);%Horizontal

y2=cos(5*pi*x);
I2_V=repmat(y2,len,1);
I2_H=imrotate(I2_V,90);%Horizontal

x=(-2:0.01:2)*pi;
len=length(x);
y2=cos(5*pi*x);
I3=repmat(y2,len,1);
I3=imrotate(I3,45);
I3_V=imcrop(I3,[len/2,len/2,len/2,len/2]);
I3_H=imrotate(I3_V,90);%Horizontal

% figure;
% subplot(331),imshow(I1_V);
% subplot(332),imshow(I2_V);
% subplot(333),imshow(I3_V);
% subplot(334),imshow(I1_H);
% subplot(335),imshow(I2_H);
% subplot(336),imshow(I3_H);
% subplot(337),imshow(I1_V>=0);
% subplot(338),imshow(I2_V>=0);
% subplot(339),imshow(I3_V>=0);

figure,imshow(log(abs(fftshift(fft(I3_V))+1))),colormap(jet(256)),colorbar;
