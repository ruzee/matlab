M=256;
N=256;
u = 0:(M - 1);
v = 0:(N - 1);
idx = find(u > M/2); %找大于M/2的数据
u(idx) = u(idx) - M; %将大于M/2的数据减去M
idy = find(v > N/2);
v(idy) = v(idy) - N;
[V, U] = meshgrid(v, u);   

D=sqrt(V.*V+U.*U);
mesh(D);
D0=20;
H=exp(-(D.^2)./D0^2);
mesh((H));
