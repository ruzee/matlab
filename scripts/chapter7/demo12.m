I=imread('eight.tif');
J=imnoise(I,'salt & pepper',0.02);
K=medfilt2(J);
subplot(1,3,1),imshow(I),title('origin');
subplot(1,3,2),imshow(J),title('contaminated'); 
subplot(1,3,3),imshow(K),title('filter by med'); 
%ֵ�˲������˳�ͼ��Ľ��������ǳ���Ч����ȥ��ͼ���Ͻ��������İߵ�ȫ����ȥ����
