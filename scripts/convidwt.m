%myconvidwt
load noisdopp;
plot(noisdopp);title('原始信号');
[Lo_D,Hi_D,Lo_R,Hi_R] = wfilters('sym4'); 
[A,D]=dwt(noisdopp,'sym4');
% figure,plot(A);title('小波分解近似信号');
% figure,plot(D);title('小波分解细节信号')
len=length(A);
A0=zeros(1,2*len);
ind=1:2:2*len;
A0(ind)=A;
D0=zeros(1,2*len);
D0(ind)=D;

A1=conv(A0,Lo_R);
D1=conv(D0,Hi_R);
figure,plot(A1+D1);title('卷积重建信号');
