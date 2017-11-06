function [iMat] = MaxOptTask(iMat,iMatSize,Max);
%Преобразованиие матрицы для нахождения максимального оптимального решения
%Матрица умножается на -1 и к каждому элементу добавляется макисальный
%элемент матрицы
global bDeb;
try
    iMat = iMat*(-1) + Max;
    if bDeb
        ShowPrepare(iMat,Max);
    end
catch
    throw('Ошибка при преобразовании в задачу на нахождение максимума\n');
end
end