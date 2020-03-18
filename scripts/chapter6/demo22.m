% Set wavelet name. 
wname = 'db5';
% Compute the four filters associated with wavelet name given 
% by the input string wname. 
[Lo_D,Hi_D,Lo_R,Hi_R] = wfilters(wname); 
subplot(221); stem(Lo_D); 
title('Decomposition low-pass filter'); 
subplot(222); stem(Hi_D); 
title('Decomposition high-pass filter'); 
subplot(223); stem(Lo_R); 
title('Reconstruction low-pass filter'); 
subplot(224); stem(Hi_R); 
title('Reconstruction high-pass filter'); 
xlabel('The four filters for db5')
