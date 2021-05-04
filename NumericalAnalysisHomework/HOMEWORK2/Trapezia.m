function t=Trapezia(a,b,n,f_name)

    h=(b-a)/n;
    fa=feval(f_name,a);
    fb=feval(f_name,b);
    t1=0;
    for k=1:n-1
         x(k)=a+k*h;
         t1=t1+feval(f_name,x(k));
    end
    t=h*(fa+2*t1+fb)/2;
end



   
