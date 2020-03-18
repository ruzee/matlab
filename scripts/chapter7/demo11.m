I=imread('eight.tif');
J=imnoise(I,'gaussian',0.02);
subplot(221),imshow(I);title('origin');
subplot(222),imshow(J);title('gaussian');
h=[1 1 1;1 1 1;1 1 1]/9;
JJ=conv2(im2double(J),h,'same');
subplot(223),imshow(JJ);title('denoise by conv');
JJJ=filter2(h,im2double(J),'same');
subplot(224),imshow(JJJ);title('denoise by filter2');
e=JJ-JJJ;
max(e(:))  %-1.3878e-16