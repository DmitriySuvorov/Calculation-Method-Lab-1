function ShowCINMatrix(iNullCount,arrPlusRow,arrPlusCol)
%����� ��� �� ����� (��� ����������� ������)
%try
    CINmat = ones(length(arrPlusRow),length(arrPlusRow));
    for i = 1:iNullCount
        if arrPlusRow(i) ~= 0 && arrPlusCol(i) ~= 0
            CINmat(arrPlusRow(i),arrPlusCol(i)) = 0;
        end
    end
    disp(CINmat);
%catch
%    fprintf('������ ��� ����������� ���\n');
%end
end

