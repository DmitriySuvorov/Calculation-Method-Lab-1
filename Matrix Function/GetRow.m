function [ArrRow] = GetRow(IRowNum,iMat)
%������ �� ������� ������� ���������� ������, �� ��������� ������ ��������� ������
try
    iSize = size(iMat,1);
    ArrRow = zeros(1,iSize);
    for j = 1:iSize
        ArrRow(j) = iMat(IRowNum,j);
    end
catch
   fprintf('������ ��� �������������� %.1d ������ � ���������� ������\n',IRowNum); 
end

end

