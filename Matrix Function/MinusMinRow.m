function [iMat] = MinusMinRow(IMatSize,iMat)
%��������� ������������ �������� ������ �� ������� �������� ������
try
    for i = 1:IMatSize
        arrRow = GetRow(i,iMat); %arrRow - ������ ������� ������
        RowMin = FindMin(arrRow); %RowMin - ����������� ������� � ������
        for j = 1:IMatSize
            iMat(i,j) = iMat(i,j)- RowMin;
        end
    end
catch
    fprintf('������ ��� ��������� ������������ �������� �  %.1d ������\n',i);
end

