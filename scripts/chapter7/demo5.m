I=imread('circuit.tif');
subplot(231),imshow(I);title('origin gamma=1');
subplot(234),imhist(I);
J=imadjust(I,[0.1 0.7],[],2);
subplot(232),imshow(J);title('gamma=2');
subplot(235),imhist(J);
JJ=imadjust(I,[0.1 0.7],[],0.5);
subplot(233),imshow(JJ);title('gamma=0.5');
subplot(236),imhist(JJ);
