%% demo01_04
function p=twogaussian(mu1,sig1,a1,mu2,sig2,a2,k)
if nargin==0
    mu1=0.15;
    sig1=0.05;
    a1=1;
    mu2=0.75;
    sig2=0.05;
    a2=0.07;
    k=10;
end
x=linspace(0,1,256);
p=k+...
    a1/(sqrt(2*pi)*sig1^2)*exp(-(x-mu1).^2./(2*sig1^2))+...
    a2/(sqrt(2*pi)*sig2^2)*exp(-(x-mu2).^2./(2*sig2^2));
p=p./sum(p(:));
