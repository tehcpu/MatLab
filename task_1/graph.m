function graph()
% Входные данные (по дефолту: 0.2, 1.8, 10)
firstPoint = input('Начальная точка: ');
lastPoint = input('Конечная точка: ');
numPoints = input('Количество промежуточных точек: ');

% Считаем интервал промежуточных точек
interval = (lastPoint-firstPoint)/numPoints;

% Инициализируем объект класса Pero
p = Pero(firstPoint, f(firstPoint,numPoints));

% И инициализируем переменные для пункта (1.3)
ySumm = 0;
% Дополняем массив с точками
for i = firstPoint:interval:lastPoint
   cy = f(i,numPoints); % Вводим переменную, чтобы не считать
                        % несколько раз одно и то же.
   
   % (1.4) - снова просчитываем пердыдущее значение функции ..
   iPrev = i-interval;
   cyPrev = f(iPrev,numPoints);
   % .. и сравниваем знаки соседних точек. Если знаки различаются,
   % то на данном сегменте функция пересекает ось 0X.
   if sign(cy) ~= sign(cyPrev)
     % Для нахождения ~ значения Х воспользуемся алгоритмом
     % решения ур - ия методом деления отрезка пополам.
     % Сначала, делаем проверку на локальность отрезка
     if f(iPrev,numPoints) * f(i,numPoints) >= 0
         error('Отрезок не является локальным!')
     end
     % Применям алгоритм
     curr = i;
     while curr-(iPrev) > 0.0001    % Эпселен. Для точности можно 
                                 % указать значение по - меньше.
         t = (iPrev + curr)/2;
         if f(t, numPoints) * f(iPrev,numPoints) > 0
             iPrev = t;
         else
             curr = t;
         end
     end 
     markz(t, i, cy, p);
   else
     p.punct(i, cy);
   end
   % (1.3) - считаем сумму координат x y
   ySumm = ySumm + cy;
end
% Строим график
% Задаем единичные векторы на обоих осях равными ..
axis('equal');
p.draw

% (1.3) - добавляем линию
% Сначала устанавливаем белый цвет линии ..
p.set('lineColor' , 'w');
% Переходим в точку начала линии ..
p.punct(lastPoint, ySumm/numPoints);
p.draw
% .. и подрубаем цвет обратно
p.set('lineColor' , 'b');
p.punct(firstPoint, ySumm/numPoints);
% Строим линию
p.draw