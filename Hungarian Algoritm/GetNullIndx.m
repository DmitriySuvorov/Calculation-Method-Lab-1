function [arrPlusCol,arrPlusRow,iNullCount] = GetNullIndx(iMatSize,iMat)
%��������� �������� ���
%try
    arrPlusRow = zeros(1,iMatSize); %������, ��������� ������� �������� ������
                                  %����� ������ ��������,��������� � ���
    arrPlusCol = zeros(1,iMatSize); %������, ��������� ������� �������� ������
                                  %����� ������� ��������,��������� � ���
    arrExistCol = zeros(1,iMatSize);
    arrExistRow = zeros(1,iMatSize);
    iNullCount = 0;
    for j = 1:iMatSize %������ �� ��������
        arrTempCol = GetColumn(j,iMat); %������� ����������� �������
        for i = 1:iMatSize %�������� ������� �� ������� �����
            if arrTempCol(i) == 0 && arrExistCol(j) == 0 && arrExistRow(i) == 0
                arrExistCol(j) = 1;
                arrExistRow(i) = 1;
                iNullCount=iNullCount+1;
                arrPlusCol(iNullCount) = j;
                arrPlusRow(iNullCount) = i;
            end
        end
    end
%catch
%    fprintf('������ ��� ����������� ���\n');
%end

end

