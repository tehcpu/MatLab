% x=randi(3,1,8);
% x(end+1)=12;
function y=item1_v0(x)
% �������������� ������ ����������
n=1;
y=0;
% ���� ������ �������� ������ ���� ����� ��������� ��������� �������
while n<=length(x)
    % ��������� ��� �������� ��������
    y = y + x(n);
    % � ���������� � �������� ������� 2.
    n = n + 2;
end
end

