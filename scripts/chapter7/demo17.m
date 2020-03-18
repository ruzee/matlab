rice=imread('rice.png');
rice=im2double(rice);
subplot(221),imshow(rice);title('origin');
siz=bestblk(size(rice),32);
fun=@(block_struct)min(block_struct.data(:));
bg32=blockproc(rice,siz,fun);
subplot(222),surf(bg32);title('background');
bg256=imresize(bg32,size(rice),'bicubic');
subplot(223),imshow(bg256);title('interp background');
d=mat2gray(rice-bg256);
subplot(224),imshow(d);title('debackground');


