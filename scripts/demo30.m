%demo30
load sumsin;
s=sumsin;
[c,l]=wavedec(s,3,'db1');
subplot(311),plot(s),title('Original signals');
subplot(312),plot(c),title('wavelet decomposition structure,level 3'),
xlabel('Coefs for approx. at level 3 and for det.at level 3,2,1'),

[nc,nl,cA]=upwlev(c,l,'db1');
subplot(313),plot(nc),title('Wavelet decomposition structure at level 2'),
xlabel('Coefs for approx. at level 2  and for det. at level2 2,1');
%compare the nc and the following c2
% [c2,l2]=wavedec(s,2,'db1');
% figure,plot(c2);
