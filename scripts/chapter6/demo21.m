load noisdopp;
plot(noisdopp);title('ԭʼ�ź�');
[A D]=dwt(noisdopp,'sym4');
figure,plot(A);title('ԭʼ�źŽ����ź�');
figure,plot(D);title('ԭʼ�ź�ϸ���ź�')
[A1 D1]=dwt(A,'sym4');	%�Խ��Ʒ����ٽ��зֽ⡣
figure,plot(A1);title('�����źŽ����ź�');
figure,plot(D1);title('�����ź�ϸ���ź�');
