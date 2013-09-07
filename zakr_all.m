function zakr_all(r)
% r-ссылка на РНКП
% Дано: Робот в произвольной точке поля
% Рез: Робот закрасил все клетки поля

% - - - Устанавливаем робота в верхний правый угол - - - %
starter(r)
% - - - Запускаем контроллер линий - - - %
controller(r)
% - - - Закрашиваем последнюю линию - - - %
zakr_line(r)

function controller(r)
while ~ r.is_bord('s') 
    zakr_line(r)
    r.step('s')
end


function starter(r)
while ~ r.is_bord('n')
    r.step('n')
end 
while ~ r.is_bord('o')
    r.step('o')
end 

function zakr_line(r)
if r.is_bord('o')
    while ~ r.is_bord('w')
    r.mark
    r.step('w')
    end
elseif r.is_bord('w')
    while ~ r.is_bord('o')
    r.mark
    r.step('o')
    end
end
r.mark