x=linspace(-1,1,256);
y=x;
mu=0.2;
sigma=0.1;
[X,Y]=meshgrid(x,y);
Z=exp(-((X-mu).^2+(Y-mu).^2)/(2*sigma^2))/(2*pi*sigma^2);
mesh(Z);
