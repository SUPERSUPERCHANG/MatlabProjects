fprintf('TASK 1.1\n');
M1=[1 2 8 9 5;25 63 95 87 56;34 28 96 35 74;25 98 63 75 73;96 58 51 32 68];
Max=max(max(M1));
[x,y]=find(M1==max(max(M1)));
fprintf('the max num of the matrix is');
disp(Max);
fprintf('the x-coordinate');
disp(x);
fprintf('the y-coordinate');
disp(y);

fprintf('TASK 1.2\n');
m=1;
sum=0;
for i=1:20
    m=m*i;
    sum=m+sum;
end
fprintf('sum of factorial 1:20 is');
disp(sum);

fprintf('TASK 1.3\n\n');
int=100;
sum=100;
for i=2:10
    sum=sum+int/2^(i-2);
    if i==10
        next=int/2^i;
    end
end
fprintf('summary distance is');
disp(sum);
fprintf('next distance is');
disp(next);

fprintf('TASK 2.1\n\n');
x1=0:pi/1000:3*pi;
y1=sin(x1).*cos(x1);
x2=0:pi/1000:3*pi;
y2=2*sin(x2)-1/3*cos(x2);
plot(x1,y1,'g',x2,y2)




    





