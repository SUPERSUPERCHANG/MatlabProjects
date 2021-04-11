function varargout=gauss_seq(A,b)
n=length(b);
U=[A,b(:)];
for k=1:n-1
    m=U(k+1:n,k)/U(k,k);
    U(k+1:n,k:n+1)=U(k+1:n,k:n+1)-m*U(k,k:n+1);
end
x=triu_solve(U);
    [varargout{1:2}]=deal(x,...
        U);
end