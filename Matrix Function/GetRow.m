function [ArrRow] = GetRow(IRowNum,iMat)
%Выдает из входной матрицы одномерный массив, из элементов строки заданного номера
try
    iSize = size(iMat,1);
    ArrRow = zeros(1,iSize);
    for j = 1:iSize
        ArrRow(j) = iMat(IRowNum,j);
    end
catch
   fprintf('Ошибка при преобразовании %.1d строки в одномерный массив\n',IRowNum); 
end

end

