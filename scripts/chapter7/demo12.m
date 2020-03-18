I=imread('eight.tif');
J=imnoise(I,'salt & pepper',0.02);
K=medfilt2(J);
subplot(1,3,1),imshow(I),title('origin');
subplot(1,3,2),imshow(J),title('contaminated'); 
subplot(1,3,3),imshow(K),title('filter by med'); 
%值滤波对于滤除图像的椒盐噪声非常有效，在去噪图像上椒盐噪声的斑点全部被去除。
