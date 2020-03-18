clear
load noisdopp;
[A,D]=dwt(noisdopp,'sym4');
X=idwt(A,D,'sym4');
plot(noisdopp);title('origin signal');
figure,plot(X);title('reconstructed signal');
deltaX=X-noisdopp;
figure,plot(deltaX); title('error');

