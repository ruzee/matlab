%only for uint8 gray image
I=imread("rice.png");
subplot(331),imshow(I),title('Origin Image');
for i=0:7
    II=bitand(bitshift(1,i),I);
    strtitle=sprintf("plane %d",i+1);
    subplot(3,3,i+2),imshow(II,[]),title(strtitle); 
%     drawnow;
end
title('czg');


