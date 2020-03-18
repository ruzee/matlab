cfs = [1];  % Decomposition reduced a single coefficient. 
essup = 10; % Essential support of the scaling filter db6. 
    rec = upcoef('a',cfs,'db6',6);
    return;
figure(1) ;
for i=1:6 
    % Reconstruct at the top level an approximation 
    % which is equal to zero except at level i where only 
    % one coefficient is equal to 1. 
    rec = upcoef('a',cfs,'db6',i);

    % essup is the essential support of the 
    % reconstructed signal.
    % rec(j) is very small when j is ¡Ý essup. 
    ax = subplot(6,1,i);h = plot(rec(1:essup)); 
    set(ax,'xlim',[1 325]); 
    essup = essup*2; 

end 
subplot(611) 
title(['Approximation signals, obtained from a single ' ... 
     'coefficient at levels 1 to 6'])