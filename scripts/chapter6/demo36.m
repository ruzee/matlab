%demo36
load woman;

[C,S]=wavedec2(X,2,'sym4');
a0=waverec2(C,S,'sym4');

imshow(X,map);title('origin image');
figure,imshow(a0,map);title('reconstructed image');
max(max(abs(X-a0)))
