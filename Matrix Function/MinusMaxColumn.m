function [iMat] = MinusMaxColumn(IMatSize,iMat)
%Вычитание элементов столбца из максимального в столбце
try
    for j = 1:IMatSize
        arrCol = GetColumn(j,iMat); %arrCol - текущий столбец
        ColMax = FindMax(arrCol); %ColMax - максимальный элемент в столбце
        for i = 1:IMatSize
            iMat(i,j) = ColMax - iMat(i,j);%Вычитание элементов столбца
                                           %из максимального
        end
    end
catch
    fprintf('Ошибка при вычитании максимального элемента в  %.1d столбце\n',j);
end

