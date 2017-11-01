function [iMat] = GeneralStage(iMatSize,iMat)
%Основной этап. На вход подается порядок матрицы и сама матрица
%try
    global bDeb;
    [PlusItemsCol,PlusItemsRow,iPlusNull] = GetNullIndx(iMatSize,iMat);
    %PlusColumn - номер элемента соответствует номеру столбца
    %Если i-й элемет <>-1, то в нем содержится номер строки с СНН
    %PlusItemsRow -||- для строки

    if bDeb == true
        fprintf('СНН:\n');
        ShowCINMatrix(iPlusNull,PlusItemsCol,[-1 -1],iMat);
    end


    while iPlusNull < iMatSize
        %Поиск нуля, среди невыделенных элементов
        [bHasUnmarkedNull,arrComItems] = CheckUnmarkedNull(iMat,PlusItemsCol);
        if bHasUnmarkedNull
            [PlusItemsCol,iPlusNull] = ChangePlus(PlusItemsCol,arrComItems);
        end
        if bDeb == true
            fprintf('СНН:\n');
            ShowComMatrix(iPlusNull,PlusItemsCol,arrComItems,iMat);
            ShowCINMatrix(iPlusNull,PlusItemsCol,arrComItems,iMat);
        end
    end
% arrComItems - в (1) строка, в (2) столбец нулевого элемента

%catch
%   fprintf('Ошибка в основном этапе алгоритма\n'); 
%end
end

