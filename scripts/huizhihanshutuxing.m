x=-9:0.1:9;
y=x;
[X,Y]=meshgrid(x,y);
Z=(2*sin(X).*sin(Y))./(X.*Y);
mesh(X,Y,Z)

%y1=xsin(1/x)   y2=sin(2x)
x=-3:0.01:3;
y1=x.*sin(1./x);
y2=sin(2.*x);
figure
plot(x,y1,x,y2)

%y=(0.7+2cosx(1+x^2))sinx
x3=0:0.01:2*pi;
y3=(0.7+2*cos(x3)./(1+x3.^2)).*sin(x3);
[my,idx]=min(y3);
disp(x3(idx));
figure;
plot(x3,y3);

%linear equation求解

A=[1 1 4 -4
    0 1 -1 1 
    1 1 2 2
    1 -1 1 -1];
b=[2;1;4;0];
x=A\b;
disp(x);

A=[3 4 -7 -12
    5 -7 4 2
    1 0 8 -5
    -6 5 -2 10];
b=[4;-3;9;-8];
x=A\b;
disp(x);

%有理式分式的商和余
 p1=[3 0 1 0];
 p2=[1 0 0 0.5];
 p3=[1 2 -1];
 p4=[5 2 0 1];
 fenzi=conv(p1,p2);
 fenmu=conv(p3,p4);
 [q,r]=deconv(fenzi,fenmu);
 disp(q);
 disp(r);
 
 %多项式求根和求值
 p=[2 0 -3 4 0];
 roots(p)
 polyval(p,4.3)

