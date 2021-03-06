%only for gray image
clear;
f=imread('rice.png');
if isa(f,'double')==0
    f=im2double(f);
end
subplot(221),imshow(f);title('origin image');

[M,N]=size(f);
x=linspace(-M,M,2*M);
y=linspace(-N,N,2*N);
[X,Y]=meshgrid(y,x);
D=sqrt(M.*M+N.*N);
sigma=D/5;
Z=sqrt(X.*X+Y.*Y)<=sigma;
subplot(223),mesh(Z),title('ILPF filter');

F=fft2(f,2*M,2*N);
H=fftshift(Z);
subplot(224),mesh(H);title('shift filter center');
FH=F.*H;


g=abs(ifft2(FH));
subplot(222),imshow(g(1:M,1:N)),title('filtered image');