function [bHasNull,arrComItems] = CheckUnmarkedNull(iMat,PlusItems)
%����� ���� ����� ������������ ���������
%������� ���������: ������� � ������, ����� �������� �������� ��������� ��
%   �������� �������, � �������� = -1, ���� � ������� ��� 0*, � �����
%   ������ ���� ����
%�����: True - ���� ���� ������� ��������; False - ���� ���
    arrComItems = size(2,1);
    bHasNull = false;
    arrComItems(1) = -1;
    arrComItems(2) = -1;
    
    for j = 1:size(iMat,1)
        if PlusItems(j) == -1
            for i = 1:size(iMat,1)
                if iMat(i,j) == 0
                    bHasNull = true;
                    arrComItems(1) = i;
                    arrComItems(2) = j;
                end
            end
        end
    end

end

