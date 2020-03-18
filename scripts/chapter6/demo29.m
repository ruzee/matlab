%demo29
load sumsin;
s=sumsin;
[c,l]=wavedec(s,5,'sym4');
a5=wrcoef('a',c,l,'sym4',5);
d5=wrcoef('d',c,l,'sym4',5);
subplot(311),plot(s),title('Original signals');
subplot(312),plot(a5),title('Reconstructed approximation at level 5 :a5');
subplot(313),plot(d5),title('Reconstructed detail  at level 5 :d5');
