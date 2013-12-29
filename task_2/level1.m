function s=level1
% Входные данные: аргумент и погрешность
x=input('Аргумент: ');
accuracy=input('Погрешность: ');
% Считаем числитель и знаменатель для первого члена
numerator=2;
denominator=6;
% Начальное значение
s=x-(numerator/denominator)*x^2;
y=-(numerator/denominator)*x^2;
% Считаем сумму ряда, пока погрешность меньше значения функции
while accuracy<=abs(y)
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