function y=item1_v0(x,n)
y=0;
for i=1:n
y=y+(sin((x*i)/2) + sin((x*i-1)/2))./exp(x-1/i);
end
y=sqrt(n*pi)/50.*y-0.8;
end