load imdemos circuit4
I=circuit4;
I=im2double(I);
subplot(131),imshow(I);title('origin');
h=[0 1 0;1 -4 1;0 1 0];
J=conv2(I,h','same');
subplot(132),imshow(J);title('filtered');
subplot(133),imshow(I-J);title('error');

