function Min = GetMinNotMarked(iMat,PlusItemsCol,arrComRow)
%���������� ������������� �������� ����� ������������
    bFirstMin = true;%��� ���������� �������� ������� ������������� ������������� ��������
    for i = 1:length(PlusItemsCol)
        %������� ������ � ������������ �������
        if arrComRow(i) == 0
            for j=1:length(PlusItemsCol)
                %������� ������ � ������������ ��������
                if PlusItemsCol(j) == -1
                    if bFirstMin
                        Min = iMat(i,j);
                        bFirstMin = false;
                    elseif iMat(i,j) < Min
                        Min = iMat(i,j);
                    end
                end
            end
        end
    end
end