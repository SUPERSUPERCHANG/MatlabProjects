function x=EliminationGauss(A,b)
n=length(b);
x=zeros(1,dimR);
U=[A,b(:)];
for countC=1:n-1
    for countR=countC:(dimR-1)
    mn=U(countR+1:n,countC)./A(countC,countC);
    A((countR+1:n),countR:countC)=A((countR+1),:)-mn.*(A(countC,:));
    end
end
x(end)=b(end)/A(end,end);
for k=1:dimR-1
x(end-k)=(b(end-k)-A(end-k,:)*x')/A(end-k,end-k);
end