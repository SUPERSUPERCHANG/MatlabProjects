
function x = EliminationMCP( A, B )
n=length(B);
x=zeros(n,1);
c=zeros(1,n);
d1=0;
for i=1:n-1
    max=abs(A(i,i));
    m=i;
    for j=i+1:n
        if max<abs(A(j,j))
            max=abs(A(j,j));
            m=j;
        end
    end
    if(m~=i)
        for k=i:n
            c(k)=A(i,k);
            A(i,k)=A(m,k);
            A(m,k)=c(k);
        end
        d1=B(i);
        B(i)=B(m);
        B(m)=d1;
    end
    for k=i+1:n
        for j=i+1:n
            A(k,j)=A(k,j)-A(i,j)*A(k,i)/A(i,i);
        end
        B(k)=B(k)-B(i)* A(k,i)/A(i,i);
        A(k,i)=0;
    end
end
x(n)=B(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(B(i)-sum)/A(i,i);
end