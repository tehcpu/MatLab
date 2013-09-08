function zakr_current(r)
% r-ссылка на РНКП
% Дано: Робот в произвольной точке поля
% Рез: Робот закрасил все клетки поля в шахматном порядке
%      (начиная с текущей позиции)

% - - - Устанавливаем робота в левый нижний угол - - - %
starter(r)
% - - - Запускаем контроллер линий - - - %
controller(r)

function controller(r)
while ~ r.is_bord('n')
    if r.is_mark == 0 & r.is_bord('o')
    r.step('n')
    zakr_line(r, 'w')
    elseif r.is_mark == 1 & r.is_bord('o')
    r.step('n')
    r.step('w')
    zakr_line(r, 'w')
    elseif r.is_mark == 0 & r.is_bord('w')
    r.step('n')
    zakr_line(r, 'o')
    elseif r.is_mark == 1 & r.is_bord('w')
    r.step('n')
    r.step('o')
    zakr_line(r, 'o')
    end
end


function starter(r)
    if r.is_bord('w')
        r.mark
    end
    while ~ r.is_bord('w')
      if ~ r.is_bord('w')
        r.mark
        r.step('w')
      end
      if ~ r.is_bord('w')
        r.step('w')
      if r.is_bord('w')
        r.mark
      end
      end
    end
    if r.is_mark == 0
        r.step('o')
    end
    while ~ r.is_bord('s') 
        r.step('s')
      if r.is_bord('w')
        r.step('o')
      else 
        r.step('w')
      end
    end
    
    zakr_line(r, 'o')
    
function zakr_line(r, side)
    while ~ r.is_bord(side)
      if ~ r.is_bord(side)
        r.mark
        r.step(side)
      end
      if ~ r.is_bord(side)
        r.step(side)
      if r.is_bord(side)
           r.mark
      end
      end
    end