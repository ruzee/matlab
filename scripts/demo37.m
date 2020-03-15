%demo37
%读入图像数据，并对其颜色进行编码
clear
load woman2;
nbcol=size(map,1);
colormap(pink(nbcol));
cod_X=wcodemat(X,nbcol);%Extended pseudocolor matrix scaling
image(cod_X);
axis('square');

%%单层小波变换
% [ca1,ch1,cv1,cd1]=dwt2(cod_X,'db1');
% cod_ca1=wcodemat(ca1,nbcol);
% cod_ch1=wcodemat(cd1,nbcol);
% cod_cv1=wcodemat(cv1,nbcol);
% cod_cd1=wcodemat(cd1,nbcol);
% image([cod_ca1,cod_ch1;cod_cv1,cod_cd1]);
% axis('square'),title('approximated signal and 3 detail signals at level 1');
% 
% %对图像进行二次分解
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
% %利用idwt2函数在第1层重构近似信号
% a0=idwt2(ca1,ch1,cv1,cd1,'db1',size(X));
% a0=wcodemat(a0, nbcol);
% figure,image(a0);colormap(pink(nbcol));title('construct on level 1');
% axis('square');
% 
% %利用idwt2函数在第2层重构近似信号
% a1=idwt2(ca2,ch2,cv2,cd2,'db1',size(X));
% a1=wcodemat(a1, nbcol);
% figure,image(a1);colormap(pink(nbcol));
% title('construct on level 2');
% axis('square');
%%end of single-decomposition

%%wavedec2函数在第2层对图像进行近似分解
[c,s]=wavedec2(X,2,'db1');
%利用函数appcoef2和detcoef2从分解得到的结构[C,S]提取图像的第2层近似分量和细节分量
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

%利用函数appcoef2和detcoef2从分解得到的结构[C,S]提取图像的第2层近似分量和细节分量
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

%用wrcoef2函数在图像分解的第2层重构近似信号以及细节信号
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

%利用upwlev2来提取图像分解第1层的分解结构[C，S]
[C,S]=upwlev2(c,s,'db1');
%首先从第一层分解结构[C,S]中提取系数
ca1=appcoef2(C,S,'db1',1);
ch1=detcoef2('h',C,S,1);
cv1=detcoef2('v',C,S,1);
cd1=detcoef2('d',C,S,1);
%利用系数重构
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

%从分解结构[C,S]中重构原始信号的近似分量
a0=waverec2(C,S,'db1');
cod_a0=wcodemat(a0,nbcol);
figure,colormap(pink(nbcol));
image(cod_a0);
axis('square');
%%end of muiltilevel decomposition
