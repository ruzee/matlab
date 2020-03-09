%dctenergy
clear;
x = (1:100) + 50*cos((1:100)*2*pi/40);
X=dct(x);
plot(1:length(x),X,'b');title('energy distribution');
[XX,ind]=sort(abs(X),'descend');

i=1;
while(norm(X(ind(1:i)))/norm(X)<0.999)
    i=i+1;
end
X(ind(i+1:end))=0;

xx=idct(X);
figure;plot([x;xx]');
legend('orginal',['Restructed,N=' int2str(i)],'Location','NorthWest');


