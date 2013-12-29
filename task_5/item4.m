function y=item4(x)
for n=[2,4,8,16]
    y=0;
    for j=1:n
        y=y+member(x,j);
    end
    line(x,y);
end
end

function y=member(x,k)
q=2:3:3*k-4;
w=6:3:3*k;
q=prod(q);
w=prod(w);
y=((-1)^(k+1))*(q/w).*x.^(k);
end