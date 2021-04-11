function x=triu_solve(varargin)
if nargin==1
    U=varargin{1}(:,1:end-1);
    y=varargin{1}(:,end);
elseif nargin==2
    U=varargin{1};
    y=varargin{2};
else
    error('输入参数的个数只能为一个或两个。')
end
if any(diag(U)==0)
    error('系数矩阵必须是对角线元素全不为0的上三角阵')
end
n=length(y);
x=zeros(n,1);
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=(y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
end