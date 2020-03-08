% high pass filter
%gaussian
M=256; N=256;
x=linspace(-M,M,2*M);
y=linspace(-N,N,2*N);
[X,Y]=meshgrid(y,x);
D=sqrt(M.*M+N.*N);
sigma=D/8;
G=exp(-(X.*X+Y.*Y)/2/sigma/sigma);
subplot(231),mesh(G),title('gaussian high pass filter');
subplot(234),imshow(G);

%ihpf
I=sqrt(X.*X+Y.*Y)<=sigma;
subplot(232),mesh(I),title('ILPF highpass filter');
subplot(235),imshow(I);
%btw
n=1;
B=1./(1+(sqrt(X.*X+Y.*Y)./sigma).^(2*n));
subplot(233),mesh(B),title('btw high pass filter');
subplot(236),imshow(B);