function [bHasNull,iComRow,iComCol] = CheckUnmarkedNull(PlusItemsCol,iMat,arrComRow,iComRow,iComCol)
%Поиск нуля среди невыделенных элементов 
%Входные параметры: матрица и массив, номер элемента которого совпадает со
%столбцом матрицы, а значение = -1, если в столбце нет 0*, и номер
%строки если есть
%Выход: True - если есть нулевые элементы; False - если нет. Индексы
%найденного 0'
try
    bHasNull = false;
        for j = 1:size(iMat,1)
            %Условие для поиска в невыделенных столбцах
            if PlusItemsCol(j) == -1
                for i = 1:size(iMat,1)
                    %Условие для поиска вы невыделенных строках
                    if arrComRow(i) == 0
                        if iMat(i,j) == 0
                            bHasNull = true;
                            iNull = i;
                            jNull = j;
                        end
                    end
                end
            end
        end

        if bHasNull
            iComRow = MyPush(iComRow,iNull);
            iComCol = MyPush(iComCol,jNull);
        end
    catch
        throw('Ошибка при поиске невыделенного нулевого элемента\n');
    end
end