function o=item6_i2(x)
rows = size(x,1);
cols = size(x,2);
el = [];
for i=1:rows
    % Цикл для столбцов
    for j=1:cols
        for k=j:cols
            % Если в строке находится элемент, равный текущему и, притом,
            % это на сам этот элемент
            if j ~=k && x(i, j) == x(i, k)
                % пишем его в массив
                el(end+1) = x(i, k);
            end
        end
     end
end
    o=max(el); % и выводим максимальный элемент получившегося массива
end