function level3
% Цикл для построения графика
% Т.к. n принимает значения степеней числа 2 до 8 (2^3) -
% реализуем цикл для степеней - от 0 до 3.
for i=0:3
    n=2^i; % Текущее значение n
    % Получаем значения функции для x на интервале
    % от 0 до 1 с шагом 0.05 (1/20).
    for x=0:0.05:0.9
        s1=level1_new(x);   % Первый график
        s2=level2_new(x,n); % Второй график
        % Если x = 0, => это первая точка, а значит,
        % инициализируем объекты класса "Перо".
        if x==0;
            blue=Pero(x,s1);
            green=Pero(x,s2);
        else
            blue.punct(x,s1);
            green.punct(x,s2);
        end
    end
    % Выделяем цветом предельный график
    blue.set('linecolor' , 'g')
    % И отрисовываем оба графика
    blue.draw
    green.draw
end
end

%Вычисление суммы с погрешностью
function s=level1_new(x)
accuracy=0.01; % Задаем маленькую погрешность % WTF 0_o 
% Считаем числитель и знаменатель для первого члена
numerator=2;
denominator=6;
% Начальное значение
% Начальное значение
s=x-(numerator/denominator)*x^2;
y=-(numerator/denominator)*x^2;
while accuracy<=abs(y)
    % C Каждым шагом увеличиваем числитель и 
    % знаменатель на 3 (в соответсвии с формулой)
    numerator=numerator+3;
    denominator=denominator+3;
    % Собираем формулу целиком
    y=-y*x*numerator/denominator;
    % И суммируем получившееся значение с суммой ряда
    s=s+y;
    abs(s)
end
end

%Вычисление частичной суммы
function s=level2_new(x,n)
% Считаем числитель и знаменатель для первого члена
numerator=2;
denominator=6;
% Начальное значение
% Начальное значение
s=x-(numerator/denominator)*x^2;
y=-(numerator/denominator)*x^2;
% Номер частичной суммы должен быть обязательно больше единицы!
if n>1
    % Цикл для подсчета частичной суммы данного ряда
    for i=3:n-1
        % C Каждым шагом увеличиваем числитель и 
        % знаменатель на 3 (в соответсвии с формулой)
        numerator=numerator+3;
        denominator=denominator+3;
        % Собираем формулу целиком
        y=-y*x*numerator/denominator;
        % И суммируем получившееся значение с суммой ряда
        s=s+y;
    end
end
end