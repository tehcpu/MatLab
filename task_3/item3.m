function y=item3(x)
y = bubble_sort(x);
end

function a=bubble_sort(a)
n = length(a);
for j=1:n-1
    % сравниваем каждый элемент с последующим и меняем их местами
    for i=1:n-1
    if a(i)>a(i+1);
        % temp - переменная, в которой хранятся взятые элементы
        temp=a(i);
        a(i)=a(i+1);
        a(i+1)=temp;
    end
    end
end
end