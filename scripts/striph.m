clear;clc
f=zeros(300);
for i=1:60:300
    f(i:i+29,:)=1;
end
imshow(f);
