function [PlusItemsCol,PlusItemsRow,iNullCount] = GetNullIndx(iMatSize,iMat)
%��������� �������� ���
%try
    PlusItemsRow = zeros(1,iMatSize);
    for i = 1:iMatSize
        PlusItemsRow(i) = -1;
    end
    PlusItemsCol = zeros(1,iMatSize);
    for i = 1:iMatSize
        PlusItemsCol(i) = -1;
    end
    iNullCount = 0;
    for j = 1:iMatSize %������ �� ��������
        arrTempCol = GetColumn(j,iMat); %������� ����������� �������
        for i = 1:iMatSize %�������� ������� �� ������� �����
            if arrTempCol(i) == 0 && PlusItemsCol(j) == -1 && PlusItemsRow(i) == -1
                PlusItemsCol(j) = i;
                PlusItemsRow(i) = j;
                iNullCount = iNullCount + 1;
            end
        end
    end
%catch
%    fprintf('������ ��� ����������� ���\n');
%end

end

