%convdwt
load noisdopp;
plot(noisdopp);title('ԭʼ�ź�');
[Lo_D,Hi_D,Lo_R,Hi_R] = wfilters('sym4'); 
Y=[0,0,0,0,noisdopp,0,0,0,0];

AA=conv(Y,Lo_D,'same');
DD=conv(Y,Hi_D,'same');

len=length(AA);
ind=int32(1:len-1);
L=mod(ind,2)==0;
A1=AA(L);  D1=DD(L);
figure,plot(A1);title('����õ������ź�');
figure,plot(D1);title('����õ�ϸ���ź�');
[A,D]=dwt(noisdopp,'sym4');
figure,plot(A);title('С���ֽ�����ź�');
figure,plot(D);title('С���ֽ�ϸ���ź�')





