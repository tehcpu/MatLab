function zakr_diagonal(r)
% r-ссылка на РНКП
% Дано: Робот в произвольной точке поля
% Рез: Робот закрасил клетки поля в шахматном порядке и в последней клетке.
starter(r)

zakr_diag(r,'w')
r.mark

to_top(r)

zakr_diag(r,'o')
r.mark

function zakr_diag(r, side)
while (~ r.is_bord(side) && ~ r.is_bord('s'))
    r.mark
    r.step(side)
    r.step('s')
end

function starter(r)
while ~ r.is_bord('n')
    r.step('n')
end 
while ~ r.is_bord('o')
    r.step('o')
end 

function to_top(r)
while ~ r.is_bord('n')
    r.step('n')
end 
%
%function nazad_po_zakr(r, side)
%while r.is_mark
%    r.step(side)
%end