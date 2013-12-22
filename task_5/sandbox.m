function y=sandbox(x,n)
y=0;
for i=1:n
y=y+((sin(x)).^(2*i-1) +1/5)./((exp(x/i)+(x.^(i-1)).^(1/i)).^(1/2));
end
y=2*abs(atan(x)).*y;
end