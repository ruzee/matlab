%demo37
%����ͼ�����ݣ���������ɫ���б���
clear
load woman2;
nbcol=size(map,1);
colormap(pink(nbcol));
cod_X=wcodemat(X,nbcol);%Extended pseudocolor matrix scaling
image(cod_X);
axis('square');

%%����С���任
% [ca1,ch1,cv1,cd1]=dwt2(cod_X,'db1');
% cod_ca1=wcodemat(ca1,nbcol);
% cod_ch1=wcodemat(cd1,nbcol);
% cod_cv1=wcodemat(cv1,nbcol);
% cod_cd1=wcodemat(cd1,nbcol);
% image([cod_ca1,cod_ch1;cod_cv1,cod_cd1]);
% axis('square'),title('approximated signal and 3 detail signals at level 1');
% 
% %��ͼ����ж��ηֽ�
% [ca2,ch2,cv2,cd2]=dwt2(ca1,'db1');
% cod_ca2=wcodemat(ca2,nbcol);
% cod_ch2=wcodemat(ch2,nbcol);
% cod_cv2=wcodemat(cv2,nbcol);
% cod_cd2=wcodemat(cd2,nbcol);
% figure,image([cod_ca2,cod_ch2;cod_cv2,cod_cd2]);
% colormap(pink(nbcol));
% axis('square');
% title('approximated signal and 3 detail signals at 2th decomposition');
% 
% %����idwt2�����ڵ�1���ع������ź�
% a0=idwt2(ca1,ch1,cv1,cd1,'db1',size(X));
% a0=wcodemat(a0, nbcol);
% figure,image(a0);colormap(pink(nbcol));title('construct on level 1');
% axis('square');
% 
% %����idwt2�����ڵ�2���ع������ź�
% a1=idwt2(ca2,ch2,cv2,cd2,'db1',size(X));
% a1=wcodemat(a1, nbcol);
% figure,image(a1);colormap(pink(nbcol));
% title('construct on level 2');
% axis('square');
%%end of single-decomposition

%%wavedec2�����ڵ�2���ͼ����н��Ʒֽ�
[c,s]=wavedec2(X,2,'db1');
%���ú���appcoef2��detcoef2�ӷֽ�õ��Ľṹ[C,S]��ȡͼ��ĵ�2����Ʒ�����ϸ�ڷ���
ca2=appcoef2(c,s,'db1',2);
ch2=detcoef2('h',c,s,2);
cv2=detcoef2('v',c,s,2);
cd2=detcoef2('d',c,s,2);
cod_ca2=wcodemat(ca2,nbcol);
cod_ch2=wcodemat(ch2,nbcol);
cod_cv2=wcodemat(cv2,nbcol);
cod_cd2=wcodemat(cd2,nbcol);
figure,colormap(pink(nbcol));
image([cod_ca2,cod_ch2;cod_cv2,cod_cd2]);
axis('square');
title('approximation amd detail coefficients at level 2');

%���ú���appcoef2��detcoef2�ӷֽ�õ��Ľṹ[C,S]��ȡͼ��ĵ�2����Ʒ�����ϸ�ڷ���
ca1=appcoef2(c,s,'db1',1);
ch1=detcoef2('h',c,s,1);
cv1=detcoef2('v',c,s,1);
cd1=detcoef2('d',c,s,1);
cod_ca1=wcodemat(ca1,nbcol);
cod_ch1=wcodemat(ch1,nbcol); 
cod_cv1=wcodemat(cv1,nbcol); 
cod_cd1=wcodemat(cd1,nbcol); 
figure,colormap(pink(nbcol));
image([cod_ca1, cod_ch1;cod_cv1, cod_cd1]);
axis('square');
title('approximation amd detail coefficients at level 1');

%��wrcoef2������ͼ��ֽ�ĵ�2���ع������ź��Լ�ϸ���ź�
a2=wrcoef2('a',c,s,'db1',2); 
cod_a2=wcodemat(a2,nbcol);
h2=wrcoef2('h',c,s,'db1',2); 
v2=wrcoef2('v',c,s,'db1',2); 
d2=wrcoef2('d',c,s,'db1',2); 
cod_h2=wcodemat(h2,nbcol);   
cod_v2=wcodemat(v2,nbcol); 
cod_d2=wcodemat(d2,nbcol);  
figure,colormap(pink(nbcol));
image([cod_a2,cod_h2;cod_v2,cod_d2]);
axis('square');title('approximation amd detail coefficients at level 2 by wrcoef2');

%����upwlev2����ȡͼ��ֽ��1��ķֽ�ṹ[C��S]
[C,S]=upwlev2(c,s,'db1');
%���ȴӵ�һ��ֽ�ṹ[C,S]����ȡϵ��
ca1=appcoef2(C,S,'db1',1);
ch1=detcoef2('h',C,S,1);
cv1=detcoef2('v',C,S,1);
cd1=detcoef2('d',C,S,1);
%����ϵ���ع�
siz=S(size(S,1),:);
a1=upcoef2('a',ca1,'db1',1,siz);
hd1=upcoef2('h',ch1,'db1',1,siz);
vd1=upcoef2('v',cv1,'db1',1,siz);
dd1=upcoef2('d',cd1,'db1',1,siz);
cod_a1=wcodemat(a1,nbcol);
cod_hd1=wcodemat(hd1,nbcol);
cod_vd1=wcodemat(vd1,nbcol);
cod_dd1=wcodemat(dd1,nbcol);
figure,colormap(pink(nbcol));
image([cod_a1,cod_hd1;cod_vd1,cod_dd1]);
axis('square');title('approximation amd detail coefficients at level 1 by upcoef2');

%�ӷֽ�ṹ[C,S]���ع�ԭʼ�źŵĽ��Ʒ���
a0=waverec2(C,S,'db1');
cod_a0=wcodemat(a0,nbcol);
figure,colormap(pink(nbcol));
image(cod_a0);
axis('square');
%%end of muiltilevel decomposition
