function s=Simpson(a,b,n,f_name)
h=(b-a)/n;
for k=1:2*n
    x(k)=a+k*h/2;
end
fa=feval(f_name,a);
fb=feval(f_name,b);
s1=0;
s2=0;
for k=1:n
    s1=s1+feval(f_name,x(2*k-1));
    s2=s2+feval(f_name,x(2*k));
end
s=h*(0.5*(fa-fb)+2*s1+s2)/3;
end
