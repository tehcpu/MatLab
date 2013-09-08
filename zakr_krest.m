function zakr_krest(r)
% r-ссылка на РНКП
%Дано:Робот в произвольной точке поля
%Рез:Робот в исходном положении в центре размеченного маркером креста
zakr_luch(r,'o')
nazad_po_zakr(r,'w')
%Робот в начальном положении
zakr_luch(r,'n')
nazad_po_zakr(r,'s')
%Робот в начальном положении
zakr_luch(r,'s')
nazad_po_zakr(r,'n')
%Робот в начальном положении
zakr_luch(r,'w')
nazad_po_zakr(r,'o')
%Робот в начальном положении
r.mark
function zakr_luch(r, side)
while ~ r.is_bord(side)
    r.step(side)
    r.mark
end 

function nazad_po_zakr(r, side)
while r.is_mark
    r.step(side)
end