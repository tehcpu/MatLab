function y=item1_v1(x)
% ������� ���������� �������� ������� � �������������� ����������
zrows = [];
flag = 0;
% ���������� ��� �������� � ������� ��������� ������
% ���� ��� ��������
for i=x
    % ���� ��� �����
    row = 1;
    for j=i.'
        % ���� ������� ����� 0, �� ��������� ������ � �������� ���������
        % �� ������ ������ �������.
        if j == 0
            for k=zrows
                 if k==row
                     flag = 1; % ���� ����, �� ������ ���� � �������.
                 end
            end
            % ���� ���� �� ��� ��� �� � �������, �� ���������� ������� �
            % ������.
            if flag == 0
                zrows(end+1) = row;
            end
        end
        % ��������� ������� � �������� ����� � �������� ����
        row = row + 1;
        flag = 0;
    end
end
% �������� ���������� �����, �� ���������� �� ������ ����.
y = size(x,1) - length(zrows);
end
