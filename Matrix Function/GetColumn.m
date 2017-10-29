function [ArrCol] = GetColumn(IColNum,iMat)
%Выдает из входной матрицы одномерный массив, из элементов столбца заданного номера
try
    iSize = size(iMat,1);
    ArrCol = zeros(1,iSize);
    for i = 1:iSize
        ArrCol(i) = iMat(i,IColNum);
    end
catch
   fprintf('Ошибка при преобразовании %.1d столбца в одномерный массив\n',IColNum); 
end

end

