function [iMax] = FindMax(iArr)
%���������� ������������� �����. �� ���� ����������� ������
try
iMax = iArr(1);
    for i = 1:length(iArr)
        if iArr(i)>iMax
            iMax = iArr(i); 
        end
    end
catch
    fprintf('������ ��� ������ ���������\n');
end
end