clear;
I=imread('cameraman.tif');
f=im2double(I);
% imshow(I);
[M,N]=size(f);

H=ilpf(M,N,10);%ilpf
F=fft2(f,2*M,2*N);
% figure,imshow(log(abs(FI)+1),[]);
IFI=fftshift(F);
% figure,imshow(log(abs(IFI)+1),[]);

G=IFI.*H;
imshow(log(abs(G)+1),[]);

g=abs((ifft2(G)));
figure,imshow(g(1:M,1:N));




