clear;
I=imread('peppers.png');
[M,N]=size(I);
fun=@(block_struct)(0.299*block_struct.data(:,:,1)+0.587*block_struct.data(:,:,2)+0.114*block_struct.data(:,:,3));
siz=bestblk([M N],20);
I2=blockproc(I,siz,fun);
figure,imshow(I2);