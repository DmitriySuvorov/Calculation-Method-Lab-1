function [iMin] = FindMin(iArr)
%���������� ������������ �����. �� ���� ����������� ������
    try
        iMin = iArr(1);
            for i = 1:length(iArr)
                if iArr(i)<iMin
                    iMin = iArr(i); 
                end
            end
    catch
        fprintf('������ ��� ������ ��������\n');
    end
end


