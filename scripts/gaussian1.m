function h=gaussian1(x,mu,delta)
h=exp(-(x-mu).^2/2/delta^2)/delta/sqrt(2*pi);
end
