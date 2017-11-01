function [iMat] = GeneralStage(iMatSize,iMat)
%Основной этап. На вход подается порядок матрицы и сама матрица
%try
    global bDeb;
    [PlusItemsCol,PlusItemsRow,iPlusNull] = GetNullIndx(iMatSize,iMat);
    %PlusColumn - номер элемента соответствует номеру столбца
    %Если i-й элемет <>-1, то в нем содержится номер строки с СНН
    %PlusItemsRow -||- для строки

     if bDeb == true
         FirstShowCINMatrix(iPlusNull,PlusItemsCol,[-2 -2],iMat);
     end


    while iPlusNull < iMatSize
        %Поиск нуля, среди невыделенных элементов
        [bHasUnmarkedNull,arrComItems] = CheckUnmarkedNull(iMat,PlusItemsCol);
        if bHasUnmarkedNull
            if bDeb == true
                ShowComMatrix(PlusItemsCol,PlusItemsRow,arrComItems,iMat);
            end
            [PlusItemsCol,iPlusNull] = ChangePlus(PlusItemsCol,arrComItems);
        end
        if bDeb == true
            ShowCINMatrix(iPlusNull,PlusItemsCol,arrComItems,iMat);
        end
    end
% arrComItems - в (1) строка, в (2) столбец нулевого элемента

%catch
%   fprintf('Ошибка в основном этапе алгоритма\n'); 
%end
end

