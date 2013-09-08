function zakr_chess3x3(r)
% r-ссылка на РНКП
% Дано: Робот в произвольной точке поля
% Рез: Робот закрасил все клетки поля в шахматном порядке
%      (начиная с левого нижнего угла)

% - - - Устанавливаем робота в левый нижний угол - - - %
starter(r)
% - - - Запускаем контроллер линий - - - %
controller(r)
% - - - Закрашиваем последнюю линию - - - %

function controller(r)
i=0;
while (~ r.is_bord('n'))
while (~ r.is_bord('n')) && (i < 3)
    zakr_line(r, 1)
    new_line(r)
    i=i+1;
    if r.is_bord('n')
          zakr_line(r, 1)  
    end
    
end
i=0;
while (~ r.is_bord('n')) && (i < 3)
    zakr_line(r, 4)
    new_line(r)
    i=i+1;
    if r.is_bord('n')
          zakr_line(r, 4)  
    end
end
i=0;
end
function starter(r)
  while ~ r.is_bord('s')
    r.step('s')
  end 
  while ~ r.is_bord('w')
    r.step('w')
  end 
  
function new_line(r)
if ~ r.is_bord('n')
    r.step('n')
  while ~ r.is_bord('w')
    r.step('w')
  end 
end
function zakr_line(r, offset)
if offset>=3
    r.step('o')
    r.step('o')
    r.step('o')
end
    while ~ r.is_bord('o')
      if ~ r.is_bord('o') || r.is_bord('o')
        r.mark
        if ~ r.is_bord('o')
        r.step('o')
        end
      end
      
      if ~ r.is_bord('o') || r.is_bord('o')
        r.mark
        if ~ r.is_bord('o')
        r.step('o')
        end
      end
      
      if ~ r.is_bord('o') || r.is_bord('o')
        r.mark
        if ~ r.is_bord('o')
        r.step('o')
        end
      end
      
      if ~ r.is_bord('o') || r.is_bord('o')
        if ~ r.is_bord('o')
        r.step('o')
        end
      end
      
      if ~ r.is_bord('o') || r.is_bord('o')
                if r.is_bord('o')
        r.mark
      end
        if ~ r.is_bord('o')
        r.step('o')
        end
      end
      
      if ~ r.is_bord('o') || r.is_bord('o')
        if ~ r.is_bord('o')
        r.step('o')
        end
      end
    end