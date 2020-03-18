A=zeros(2,5)
A(:)=[-4:5]
L=abs(A)>3
X=A(L)

B=A
B(L)=10;
B(~L)=1;
B


