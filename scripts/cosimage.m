%sin image
function f=cosimage(u0,v0,M,N,A,b)
%f(x,y)=Asin(u0(x+b)+v0(y+b))
% M,N:image size with pixel
% 2*pi/u0,2pi/v0,period for horizontal and vertical direction respectively
%       if u0=0,no repeart for horizon
%       if v0=0,no repeart for verticle
% |A|:amplitude
%  -b/u0: phase shift for x axis
%  -b/v0: phase shift for y axis
%
% call :
% f=cosimage(2*pi/512,2*pi/512,512,512);
    if(nargin<4)
        error('4 parameter at least');
    elseif(nargin==4)
        A=1;
        b=0;
    elseif(nargin==5)
        b=0;
    end
    r=-M/2:(M-1)/2;
    c=-N/2:(N-1)/2;
    [R,C]=meshgrid(r,c);   
    f=A*(cos(u0*(R+b)+v0*(C+b)));     
end
