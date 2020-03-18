I=imread('pout.tif');
subplot(231),imshow(I);
subplot(234),imhist(I);
J=im2double(I); %对数运算不支持uint8类型数据。所以将图像矩阵转化为double类型。用im2double可以吗，试试？
K=log(J+1);
subplot(232),imshow(K);title('log')
subplot(235),imhist(K);
L=imadjust(I,[0.3 0.7],[]);
subplot(233),imshow(L);title('[0.3 0.7]->[]');
subplot(236),imhist(L);