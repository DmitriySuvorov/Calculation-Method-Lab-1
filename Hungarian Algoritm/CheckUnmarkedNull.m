function [bHasNull,arrComItems] = CheckUnmarkedNull(iMat,PlusItems)
%Поиск нуля среди невыделенных элементов
%Входные параметры: матрица и массив, номер элемента которого совпадает со
%   столбцом матрицы, а значение = -1, если в столбце нет 0*, и номер
%   строки если есть
%Выход: True - если есть нулевые элементы; False - если нет
    arrComItems = size(2,1);
    bHasNull = false;
    arrComItems(1) = -1;
    arrComItems(2) = -1;
    
    for j = 1:size(iMat,1)
        if PlusItems(j) == -1
            for i = 1:size(iMat,1)
                if iMat(i,j) == 0
                    bHasNull = true;
                    arrComItems(1) = i;
                    arrComItems(2) = j;
                end
            end
        end
    end

end

