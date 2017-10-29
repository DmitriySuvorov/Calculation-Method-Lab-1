function [iMat] = GeneralStage(iMatSize,iMat)
%Основной этап. На вход подается порядок матрицы и сама матрица
%try
    global bDeb;
    [arrPlusCol,arrPlusRow,iNullCount] = GetNullIndx(iMatSize,iMat);
    if bDeb == true
        fprintf('СНН:\n');
        ShowCINMatrix(iNullCount,arrPlusRow,arrPlusCol)
    end
        
%catch
%   fprintf('Ошибка в основном этапе алгоритма\n'); 
%end
end

