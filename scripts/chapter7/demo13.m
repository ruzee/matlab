I=imread('moon.tif');
J=imnoise(I,'gaussian',0,0.005);
[K,noise]=wiener2(J,[3 3],0.033);
subplot(1,3,1),imshow(I);title('origin');
subplot(1,3,2),imshow(J);title('Gaussian white noise');
subplot(1,3,3),imshow(K);title('wiener2');
