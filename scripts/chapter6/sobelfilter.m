H = fspecial('sobel');
ff=freqz2(H,256,256);
I=imread('rice.png');
F=fft2(I);
% F=fftshift(F);
FF=fftshift(ff);
G=FF.*F;
G=ifftshift(G);
g=ifft2(G);

imshow(mat2gray(abs(g)),[]);
