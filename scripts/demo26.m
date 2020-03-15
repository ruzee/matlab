%demo26
load leleccum;
sig=leleccum(1:3920);
[C L]=wavedec(sig,5,'sym4');
lev=3;
a3=appcoef(C,L,'sym4',lev);
subplot(2,1,1),plot(sig),title('raw signal');
subplot(2,1,2),plot(a3),title('level-3 approximation coefficients');
length(a3)   %???
