function H=mylpfilter(M,N,r,filtertype,n)
%% generate 3 low pass filter
%   M,N filter size:height:2*M,width:2*N
%   r:radius of pass,The bigger r, the smaller of pass signal
%   filtertype:'b','B','butterworth'  for butterworth
%            'I','i','idea'         for ideal
%             'G','g','gaussian'    for gaussian
% 	n positive integer,	only for butterworth
    if nargin==2
        filtertype='gaussian';
        r=10; 
    else
        error('parameters error');
    end
    x=linspace(-M,M,2*M);
    y=linspace(-N,N,2*N);
    [X,Y]=meshgrid(y,x);
    D=sqrt(M.*M+N.*N);
    sigma=D/r;
    
    switch filtertype
        case {'b','B','butterworth'}
            H=1./(1+(sqrt(X.*X+Y.*Y)./sigma).^(2*n));
        case {'I','i','idea'}
            H=double(sqrt(X.*X+Y.*Y)<=sigma);
        case {'G','g','gaussian'}
            H=exp(-(X.^2+Y.^2)/(2*sigma^2));
        otherwise        
            H=exp(-(X.^2+Y.^2)/(2*sigma^2));
    end
end

