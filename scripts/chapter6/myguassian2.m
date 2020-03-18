%only for gray image
clear;
f=imread('rice.png');
if isa(f,'double')==0
    f=im2double(f);
end
figure,imshow(f),title('origin image');

[M,N]=size(f);
x=linspace(-M,M,M);
y=linspace(-N,N,N);
[X,Y]=meshgrid(y,x);
D=sqrt(M.*M+N.*N);
sigma=D/10;
Z=exp(-(X.*X+Y.*Y)/2/sigma/sigma);
figure,mesh(Z),title('gaussian filter');

F=fft2(f);
F=fftshift(F);
% H=fftshift(Z);
H=Z;
figure,mesh(H);title('shift filter center');
FH=F.*Z;

g=abs((ifft2(FH)));
figure,imshow(g(1:M,1:N)),title('filtered image');