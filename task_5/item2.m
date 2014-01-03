function y=item2(x,n,a,b)
% Находим массив координат точек по оси x.
x=a:abs(b-a)/x:b;
% Выполняем алгоритм, использованный в item1_v1.m
k=1:n;
x1=repmat(x,size(k,2),1);
k=repmat(k.',1,size(x1,2));
y=(sin((x1.*k)/2) + sin((x1.*k-1)/2))./exp(x1-1./k);
y=sum(y);
y=sqrt(n*pi)/50.*y-0.8;
% Строим график
line(x,y);
end