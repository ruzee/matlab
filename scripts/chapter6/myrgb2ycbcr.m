c=[16;128;128];
% A=[65.481 128.553 24.966;
%     -37.797 -74.203 112.000;
%     112.000 -93.786 -18.214];
I=imread('flamingos.jpg');
I=im2double(I);

Y=A(1,1)*I(:,:,1)+A(1,2)*I(:,:,2)+A(1,3)*I(:,:,3)+c(1);
Y(:,:,2)=A(2,1)*I(:,:,1)+A(2,2)*I(:,:,2)+A(2,3)*I(:,:,3)+c(2);
Y(:,:,3)=A(3,1)*I(:,:,1)+A(3,2)*I(:,:,2)+A(3,3)*I(:,:,3)+c(3);
Y=uint8(Y);
imwrite(Y,'images/ycbcrflamingos.jpg');
imshow(Y);

