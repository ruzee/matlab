x=linspace(-1,1,256);
y=x;
mu=0;
sigma=0.1;
[X,Y]=meshgrid(x,y);

Z(:,:,1)=exp(-((X-mu).^2+(Y-mu).^2)/(2*sigma^2))/(2*pi*sigma^2);
sigma=0.2;
Z(:,:,2)=exp(-((X-mu).^2+(Y-mu).^2)/(2*sigma^2))/(2*pi*sigma^2);
sigma=0.3;
Z(:,:,3)=exp(-((X-mu).^2+(Y-mu).^2)/(2*sigma^2))/(2*pi*sigma^2);

figure,mesh(Z(:,:,1));
figure,mesh(Z(:,:,2));
figure,mesh(Z(:,:,3));
