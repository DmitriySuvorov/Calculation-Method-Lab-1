function [iMat] = MinusMinRow(IMatSize,iMat)
%Вычитание минимального элемента строки из каждого элемента строки
try
    for i = 1:IMatSize
        arrRow = GetRow(i,iMat); %arrRow - массив текущей строки
        RowMin = FindMin(arrRow); %RowMax - минимальный элемент в строке
        for j = 1:IMatSize
            iMat(i,j) = iMat(i,j)- RowMin;
        end
    end
catch
    fprintf('Ошибка при вычитании минимального элемента в  %.1d строке\n',i);
end

