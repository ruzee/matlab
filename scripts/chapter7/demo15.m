load imdemos 
I=circuit4;
h=fspecial('sobel');
subplot(221),imshow(I);title('origin');
J1=mat2gray(filter2(h,I));%ˮƽ�߽���
subplot(222),imshow(J1);title('horizon filter');
J2= mat2gray(filter2(rot90(h,1),I));%��ֱ�߽���
subplot(223),imshow(J2);title('vertical filter');
subplot(224),imshow((J1+J2)/2);title('two direction');
