%demo33
load woman;
imshow(X,map);
figure;
[cA,cH,cV,cD]=dwt2(X,'sym4');
subplot(221),imagesc(cV),title('Vertical detail image');
colormap(gray(256));
subplot(222),imagesc(cA),title('Lowpass Approximation');
subplot(223),imagesc(cH),title('Horizental detail image');
subplot(224),imagesc(cD),title('Diagonal detail image');
