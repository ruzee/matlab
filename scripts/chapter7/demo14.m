%�鿴���˲�����Ƶ����Ӧ
filtertype=["laplacian","unsharp","log","sobel","prewitt",...
    "average","disk","gaussian","motion"];
H={1:length(filtertype)};
for i=1:length(filtertype)
    H{i}=fspecial(filtertype{i});
    subplot(3,3,i),freqz2(H{i});title(filtertype{i});    
end
