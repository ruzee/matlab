%查看各滤波器的频率响应
filtertype=["laplacian","unsharp","log","sobel","prewitt",...
    "average","disk","gaussian","motion"];
H={1:length(filtertype)};
for i=1:length(filtertype)
    H{i}=fspecial(filtertype{i});
    subplot(3,3,i),freqz2(H{i});title(filtertype{i});    
end
