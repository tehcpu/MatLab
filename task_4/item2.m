% x=randi(3,2,8);
% x(1:1)=0
function o=item2(x)
rows = size(x,1);
cols = size(x,2);
el = [];
for i=1:rows
    % ���� ��� ��������
    for j=1:cols
        for k=j:cols
            % ���� � ������ ��������� �������, ������ �������� �, ������,
            % ��� �� ��� ���� �������
            if j ~=k && x(i, j) == x(i, k)
                % ����� ��� � ������
                el(end+1) = x(i, k);
            end
        end
     end
end
o = el(nmax(el)); % ������� ������������ ������� ������������� �������� � ������� ���. �������.
end

function o=nmax(x)
% ������������� ����������
nmax=1;
% ������ ������������ �������� (�� ��������� - ������ ������� �������)
temp=x(1);
% ���� �� ������� �� ���������� �������� �������
for i=1:length(x)
% ���� ������� ������� ������ ����������� ������������� ..
if (x(i)>temp)
    % ���������� ��� �������� � temp
    temp=x(i);
    % � �������������� ������� ������ ������������� ��������
    nmax=i;
end
end
o=nmax;
end