%demo25
load leleccum;
s=leleccum(1:3920);
ls=length(s);
[C,L]=wavedec(s,3,'db5');
a0=waverec(C,L,'db5');
err=norm(s-a0);

