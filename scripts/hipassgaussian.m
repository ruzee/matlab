f=fspecial('gaussian',[512 512],20);
lp=abs(freqz2(f,512,512));
hp=fftshift(lp);
figure,mesh(hp);
I=imread('rice.png');
I=im2double(I);
figure ,imshow(I);

FI=fft2(I,512,512);

HPI=FI.*hp;
G=ifft2(HPI);
g=G(1:256,1:256);
figure,imshow(G(1:256,1:256));
gg=g>0.12;
figure,imshow(gg);






