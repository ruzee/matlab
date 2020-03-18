RGB=imread('football.jpg');
subplot(131);imshow(RGB);title('origin')
RGB2=imadjust(RGB,[0.2 0.3 0;0.6 0.7 1],[]);
subplot(132);imshow(RGB2);title('0.2 0.3 0;0.6 0.7 1->[]');
RGB3=imadjust(RGB,[0 0 0;1 1 1],[1 1 1; 0 0 0]);
subplot(133);imshow(RGB3);title(' negative ');
