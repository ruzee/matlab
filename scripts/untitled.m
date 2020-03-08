clear;
M=9;
N=5;
u=0:M-1;
v=0:N-1;

idx=find(u>M/2);
u(idx)=abs(u(idx)-M);
idy=find(v>N/2);
v(idy)=abs(v(idy)-N);
[U,V]=meshgrid(v,u);

DSQ=U.^2+V.^2

