%sin image
%f(x,y)=Asin(ux+vy)
% M,N:image size
% 
%call :f=sinimage(1,1/(4*pi),1/(4*pi),512,512)
function f=cosimage(A,u0,v0,M,N,b)
    r=-M/2:(M-1)/2;
    c=-N/2:(N-1)/2;
    [R,C]=meshgrid(r,c);   
    f=A*(cos(u0*R+v0*(C+b)));     
end
