clear;
x=-10:0.5:10;
[X,Y]=meshgrid(x);
r=sqrt(X.^2+Y.^2)+eps;
Z=sin(r)./r;
surf(Z);
theAxes=axis;
fmat=moviein(20);
for i=1:20
    surf(sin(2*pi*i/20)*Z,Z)
    axis(theAxes)
    fmat(:,i)=getframe;
end
movie(fmat,5)