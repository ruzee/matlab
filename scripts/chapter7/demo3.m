I=imread('rice.png');
J=imadjust(I,[0.2 0.8],[]);
subplot(2,2,1),imshow(I);
subplot(2,2,2),imshow(J);
% figure,
subplot(2,2,3),imhist(I);
subplot(2,2,4),imhist(J);
