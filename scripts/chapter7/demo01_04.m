%% demo01_04

function twogaussian(mu1,sig1,a1,mu2,sig2,a2,k)
if nargin==0
    mu1=0.15;
    sig1=0.05;
    a1=1;
    mu2=0.75;
    sig2=0.05;
    a2=0.07;
    k=0.002;
end


c1=A1*(1/((2*pi)^2)*sig1);
k1=2*(sig1^2);

c2=A2*(1/((2*pi)^2)*sig2);
k2=2*(sig2^2);

z=linspace(0,1,256);
p=k+c1*exp(-((z-m1).^2)./k1)+...
    c2*exp(-((z-m2).^2)./k2);
p=p./sum(p(:));