function [iMat] = MinusMinColumn(IMatSize,iMat)
%Вычитание минимального в каждом столбце
%try
    for j = 1:IMatSize
        arrCol = GetColumn(j,iMat); %arrCol - текущий столбец
        ColMin = FindMin(arrCol); %ColMax - минимальный элемент в столбце
        for i = 1:IMatSize
            iMat(i,j) = iMat(i,j)- ColMin;
        end
    end
% catch
%     fprintf('Ошибка при вычитании максимального элемента в  %.1d столбце\n',j);
end

