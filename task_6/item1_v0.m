function item1_v0(string)
% »нициализируем массивы дл€ символов разделени€ слов ..
%words = strvcat(' ', ',', ';', ':', '-', '"', '(', ')');
% .. и предложений.
%sents = strvcat('.', '?', '!', '...');

% “еперь уберем из строки все двойные пробелы и табул€ции
strrep(string, '	', ''); 
strrep(string, '  ', '');

% Ќайдем позиции всех пробелов
words = strfind(string,' ')

% » позиции концов предложений
questions = strfind(string,'?');
exclamation = strfind(string,'!');
threedots = strfind(string,'...');
dot = strfind(string,'.');
ends = [questions, exclamation, threedots, dot]
%words_arr(.:.) = strcat(string(1:3));

s = 0;
w = 0;
l = 0;
f = 0;
x = [];
for i=1:length(string)
if string(i) == ' ' || string(i) == ',' || string(i) == ';' || string(i) == ':' || string(i) == '-' || string(i) == '(' || string(i) == ')'
    if f == 0
        f = 1;
        w = w + 1
    end
else
    f = 0;
    l = l + 1;
end
if string(i) == '.' || string(i) == '!' || string(i) == '?'
    s = s + 1;
    x(end+1) = w
    w = 0;
    l = 0;
    f = 0;
end
i
end