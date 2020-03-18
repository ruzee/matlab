load noisdopp;
plot(noisdopp);title('原始信号');
[A D]=dwt(noisdopp,'sym4');
figure,plot(A);title('原始信号近似信号');
figure,plot(D);title('原始信号细节信号')
[A1 D1]=dwt(A,'sym4');	%对近似分量再进行分解。
figure,plot(A1);title('近似信号近似信号');
figure,plot(D1);title('近似信号细节信号');
