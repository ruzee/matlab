[x,xn] = wnoise('blocks',10,3);
xdMODWT = wden(xn,'modwtsqtwolog','s','mln',6,'haar');
xd = wden(xn,'sqtwolog','s','mln',6,'haar');
plot(x)
hold on
plot(xd,'r--')
plot(xdMODWT,'k-.')
legend('Original','DWT','MODWT')
hold off
norm(abs(x-xd),2), 
norm(abs(x-xd),Inf)
norm(abs(x-xdMODWT),2), 
norm(abs(x-xdMODWT),Inf)
