I = imread('../images/cameraman.tif');
imhist(I);
% J = histeq(I);
% imshowpair(I,J,'montage')
% axis off
% f=imhist(I,256);
% f=f./cumsum(f);figure,plot(f);%axis(0,255,0,1000);
% figure
% g=imhist(J,256);
% g=g./cumsum(g);
% plot(g);
k=histeq(I,p);
figure,imshow(k);
figure,imhist(k);