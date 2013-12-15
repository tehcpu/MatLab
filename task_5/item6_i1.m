function o=item6_i1(x)
    [r, c, v] = find(x==0);           % находим индексы строк с нулями (r)
    o=size(x,1) - length(unique(r));  % вычитаем из кол - ва всех строк кол - во строк с нулями
end