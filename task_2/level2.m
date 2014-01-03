function s=level2
% Входные данные: аргумент и номер частичной суммы
x=input('Аргумент: ');
partsum=input('Номер частичной суммы: ');
% Считаем числитель и знаменатель для первого члена
numerator=2;
denominator=6;
% Начальное значение
s=x-(numerator/denominator)*x^2;
y=-(numerator/denominator)*x^2;
% Номер частичной суммы должен быть обязательно больше единицы!
if partsum>1
    % Цикл для подсчета частичной суммы данного ряда
    for i=3:partsum-1
        % C Каждым шагом увеличиваем числитель и 
        % знаменатель на 3 (в соответствии с формулой)
        numerator=numerator+3;
        denominator=denominator+3;
        % Собираем формулу целиком
        y=-y*x*numerator/denominator;
        % И суммируем получившееся значение с суммой ряда
        s=s+y;
    end
end
end