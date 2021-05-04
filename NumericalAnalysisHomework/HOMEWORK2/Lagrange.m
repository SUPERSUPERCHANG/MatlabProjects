function y=Lagrange(x0,y0,x)

    n = length(x);% 要预测的个数
    y = zeros(n);% 初始化，并赋初值0
    y = y(1,:);
    for k = 1:length(x0)
        j_no_k=find((1:length(x0))~=k);% 在这里，find函数用于返回一个向量中不为下标k的元素（下标从1开始）
        y1=1;
        for j = 1:length(j_no_k)
            y1 = y1.*(x-x0(j_no_k(j))); % ∏(x-xj)
        end
        y = y + y1*y0(k)/prod(x0(k)-x0(j_no_k));% prod函数返回数组元素的乘积
    end
end