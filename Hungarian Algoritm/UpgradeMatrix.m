function iMat = UpgradeMatrix(iMat,PlusItemsCol,arrComRow)
%��������� �������. ��������� ����������� ����� ������������ ��������� ��
%������������ ��������. ����������� ����� ����������� � ���������� �������.
%�� ���� ����������� �������,������ � ����������� ���������� � ����������
%������
try
    %iMinNotMarked - ���������� �� ������������
    iMinNotMarked = GetMinNotMarked(iMat,PlusItemsCol,arrComRow);
    for i = 1:length(PlusItemsCol)
        %� ���������� ������ ������������ ���������� �������
        if arrComRow(i) == 1
            for j = 1:length(PlusItemsCol)
                iMat(i,j) = iMat(i,j) + iMinNotMarked;
            end
        end
        %�� ������������� ������� ���������� ���������� �������
        for j = 1:length(PlusItemsCol)
            if PlusItemsCol(j) == -1
                iMat(i,j) = iMat(i,j) - iMinNotMarked;
            end
        end
    end
catch
    throw('������ ��� ��������� �������\n');
end
end