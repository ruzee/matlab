%energyinpenny
clear;
load penny
imshow(P,[]),colormap('copper');title('origin');

Q=dct(P,[],1);
R=dct(Q,[],2);
% figure,imshow(Q,[]);colormap(jet(64));
% figure,imshow(R,[]);colormap(jet(64));
X=R(:);
[~,ind]=sort(abs(X(:)),'descend');

i=1;
while(norm(X(ind(1:i)))/norm(X)<0.9999)
    i=i+1;
end

R(ind(i+1:end))=0;

S=idct(R,[],2);
T=idct(S,[],1);
%restore image
figure,imshow(T,[]),colormap('copper');title('restore');

e=T-P;
max(abs(e(:))) 
mean(e(:))
std(e(:))