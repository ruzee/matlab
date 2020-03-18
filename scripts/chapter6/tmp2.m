clear;
load sumsin;
s=sumsin;
level=7;
[c,l]=wavedec(s,level,'sym4');
    a1=wrcoef('a',c,l,'sym4',2);
    d1=wrcoef('d',c,l,'sym4',2);
    a0=wrcoef('a',c,l,'sym4',1);
return;
a=zeros(level,length(s));
d=a;
for i=1:level
    a(i,:)=wrcoef('a',c,l,'sym4',i);
    d(i,:)=wrcoef('d',c,l,'sym4',i);
    figure(i);
    subplot(311),plot(s),title('raw signal');
    str1 = sprintf('approximation signal at level %d',i);
    str2 = sprintf('detail signal at level %d',i);
    subplot(312),plot(a(i,:)),title(str1);
    subplot(313),plot(d(i,:)),title(str2);
end 
