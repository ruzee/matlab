function H=gaussianlowpass(M,N,D0)
    [U,V]=dftuv(M,N);
    D=sqrt(U.^2+V.^2);
    H=exp(-(D.^2)/(2*D0^2));
end

