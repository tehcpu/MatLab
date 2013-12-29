function y=item3(x,k)
q=2:3:3*k-4;
w=6:3:3*k;
q=prod(q);
w=prod(w);
y=((-1)^(k+1))*(q/w).*x.^(k);
end