%demo35
clear
load woman;
[C,S]=wavedec2(X,2,'db1');
sizeX=size(X);
sizec=size(C);
sizeS=size(S);
