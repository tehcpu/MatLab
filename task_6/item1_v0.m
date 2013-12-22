function o=item1_v0(string)
% «амен€ем все знаки препинани€ на пробелы.
string = strrep(string, ',', ' ');
string = strrep(string, ';', ' ');
string = strrep(string, ':', ' ');
string = strrep(string, '-', ' ');
string = strrep(string, '(', ' ');
string = strrep(string, ')', ' ');
string = strrep(string, '"', ' ');

% «амен€ем все множественные пробелы на одинарный пробел.
string = strrep(string, '  ', ' ');
string = strrep(string, '   ', ' ');
string = strrep(string, '    ', ' ');
string = strrep(string, '     ', ' '); % на вс€кий случай.

% «амен€ем все знаки препинани€ на точки.
string = strrep(string, '!', '.');
string = strrep(string, '?', '.');
string = strrep(string, '...', '.');

% ”бираем лишние пробелы до точек и после точек
string = strrep(string, ' . ', '.');
string = strrep(string, '. ', '.');
string = strrep(string, ' .', '.');

% –азбиваем текст на предложени€ и пишем их в массив (1 - ый проход)
array = strsplit(string, '.');

% »нициализируем массив
num = [];

% ƒл€ каждого элемента массива считаем количество пробелов
% и прибавл€ем единицу (провое слово). 2 - ой проход.

for i=1:length(array)
    words = sum(array{i} == ' ') + 1; % количсетво слов
    chars = length(array{i}) - sum(array{i} == ' '); % количество символов
    num(end+1) = chars/words; % пишем в массив среднюю длину слов этого предложени€
end
% Ќаходим макимальный(ые) элемент(ы) массива - номер(а) предложени€(ий) с максимальной средней длиной слов
o=find(num==max(num));
end