%demo34
load woman;
imshow(X,map),title('Original Image');
figure;
[cA,cH,cV,cD]=dwt2(X,'sym4');
subplot(221),imagesc(cV),title('Vertical detail image');
colormap(gray);
subplot(222),imagesc(cA),title('Lowpass Approximation');
subplot(223),imagesc(cH),title('Horizental detail image');
subplot(224),imagesc(cD),title('Diagonal detail image');
figure;
A0=idwt2(cA,cH,cV,cD,'sym4');
imshow(A0,map);title('Reconstruct Image');
max(max(abs(X-A0)))
% A1=idwt2(A0,[],[],[],'sym4');
% figure,imshow(A1,map);
