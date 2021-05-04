function x = LU(A)
n=length(A);A(2:n,1)=A(2:n,1)/A(1,1);
for t=2:n-1  %进行LU分解
    A(t,t:n)=A(t,t:n)-A(t,1:t-1)*A(1:t-1,t:n);
    A(t+1:n,t)=(A(t+1:n,t)-A(t+1:n,1:t-1)*A(1:t-1,t))/A(t,t);
end
A(n,n)=A(n,n)-A(n,1:n-1)*A(1:n-1,n);
x(1)=tril(A,-1)+eye(n);
x(2)=triu(A);
end
    
    