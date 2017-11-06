function iMat = UpgradeMatrix(iMat,PlusItemsCol,arrComRow)
%Улучшение матрицы. Вычитание наименьшего среди невыделенных элементов из
%невыделенных столбцов. Прибавление этого наименьшего к выделенным строкам.
%На вход принимается матрица,массив с выделенными элементами и выделенная
%строка
try
    %iMinNotMarked - наименьшее из невыделенных
    iMinNotMarked = GetMinNotMarked(iMat,PlusItemsCol,arrComRow);
    for i = 1:length(PlusItemsCol)
        %к выделенной строке прибавляется наименьший элемент
        if arrComRow(i) == 1
            for j = 1:length(PlusItemsCol)
                iMat(i,j) = iMat(i,j) + iMinNotMarked;
            end
        end
        %Из невыделенного столбца вычитается наименьший элемент
        for j = 1:length(PlusItemsCol)
            if PlusItemsCol(j) == -1
                iMat(i,j) = iMat(i,j) - iMinNotMarked;
            end
        end
    end
catch
    throw('Ошибка при улучшении матрицы\n');
end
end