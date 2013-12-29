function y=item1_v1(x,n)
k=1:n;
x1=repmat(x,size(k,2),1);
k=repmat(k.',1,size(x1,2));
y=(sin((x1.*k)/2) + sin((x1.*k-1)/2))./exp(x1-1./k);
y=sum(y);
y=sqrt(n*pi)/50.*y-0.8;
end