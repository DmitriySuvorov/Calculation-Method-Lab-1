function [ArrCol] = GetColumn(IColNum,iMat)
%������ �� ������� ������� ���������� ������, �� ��������� ������� ��������� ������
try
    iSize = size(iMat,1);
    ArrCol = zeros(1,iSize);
    for i = 1:iSize
        ArrCol(i) = iMat(i,IColNum);
    end
catch
   fprintf('������ ��� �������������� %.1d ������� � ���������� ������\n',IColNum); 
end

end

