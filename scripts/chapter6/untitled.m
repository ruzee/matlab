I=imread('cameraman.tif');
I=im2double(I);
T=dctmtx(8);
%产生二维 DCT 变换矩阵
fun = @(block_struct)T*block_struct.data*T';
B=blockproc(I,[8 8],fun);
mask=[1 1 1 1 0 0 0 0
1 1 1 0 0 0 0 0
1 1 0 0 0 0 0 0
1 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0];%二值掩模,用来压缩 DCT 的系数
fun2=@(block_struct)mask.*block_struct.data;
B2=blockproc(B,[8 8],fun2);%只保留 DCT 变换的 10 个系数
fun3=@(block_struct)T'*block_struct.data*T;
I2=blockproc(B2,[8 8],fun3);%逆 DCT 变换,用来重构图像
imshow(I);
figure,imshow(I2);

