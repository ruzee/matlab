I=imread('pout.tif');
subplot(231),imshow(I);
subplot(234),imhist(I);
J=im2double(I); %�������㲻֧��uint8�������ݡ����Խ�ͼ�����ת��Ϊdouble���͡���im2double���������ԣ�
K=log(J+1);
subplot(232),imshow(K);title('log')
subplot(235),imhist(K);
L=imadjust(I,[0.3 0.7],[]);
subplot(233),imshow(L);title('[0.3 0.7]->[]');
subplot(236),imhist(L);