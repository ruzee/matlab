h=fspecial('gaussian',[512,512],2);
hh=abs(freqz2(h,512,512));
figure,mesh((hh));
H=fftshift(hh);
figure,mesh(H);

f=imread('rice.png');
f=im2double(f);
F=fft2(f,512,512);
G=F.*H;
g=ifft2(G);
figure,imshow(g(1:256,1:256));