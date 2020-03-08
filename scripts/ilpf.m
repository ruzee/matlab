function H=ilpf(M,N,k)
    x=linspace(-M,M,2*M);
    y=linspace(-N,N,2*N);
    [X,Y]=meshgrid(y,x);
    D=sqrt(M.*M+N.*N);
    sigma=D/k;
    H=sqrt(X.*X+Y.*Y)<=sigma;
end