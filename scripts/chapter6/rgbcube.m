clear;
f=zeros(256);
f(1:128,:)=1;
% f(512,512)=0;

imshow(f);
F=fft2(f,512,512);
H = fspecial('gaussian',[512,512],2*10);
H=fft2(H);
% H=rot90(H);
G=abs(H).*F;
g=ifft2(G);
figure,imshow(abs(g(1:256,1:256)));

h=fspecial('gaussian',[256 256],2*10);
gs=imfilter(f,h);
figure,imshow(gs);
