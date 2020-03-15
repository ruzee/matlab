%demo28
load noisdopp;
Y=noisdopp(1:100);
[cA,cD] = dwt(Y,'sym4');
xrec=idwt(cA,[],'sym4');
% rec=upcoef('d',cA,'sym4',1);
% xrec2=idwt(xrec,[],'sym4');
figure(1);
for i=1:6
    rec=upcoef('d',cA,'sym4',i);
    essup=length(rec);
    ax=subplot(6,1,i);
    plot(rec(1:essup));
    set(ax,'xlim',[1 3370]);
end
subplot(611);
title(['Approximation signals, obtained from a single'...
' coefficient at levels 1 to 6']);
