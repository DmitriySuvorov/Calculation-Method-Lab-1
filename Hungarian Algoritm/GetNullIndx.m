function [arrPlusCol,arrPlusRow,iNullCount] = GetNullIndx(iMatSize,iMat)
%Получение индексов СНН
%try
    arrPlusRow = zeros(1,iMatSize); %массив, ненулевой элемент которого хранит
                                  %номер строки элемента,входящего в СНН
    arrPlusCol = zeros(1,iMatSize); %массив, ненулевой элемент которого хранит
                                  %номер столбца элемента,входящего в СНН
    arrExistCol = zeros(1,iMatSize);
    arrExistRow = zeros(1,iMatSize);
    iNullCount = 0;
    for j = 1:iMatSize %Проход по столбцам
        arrTempCol = GetColumn(j,iMat); %текущий считываемый столбец
        for i = 1:iMatSize %проверка столбца на наличие нулей
            if arrTempCol(i) == 0 && arrExistCol(j) == 0 && arrExistRow(i) == 0
                arrExistCol(j) = 1;
                arrExistRow(i) = 1;
                iNullCount=iNullCount+1;
                arrPlusCol(iNullCount) = j;
                arrPlusRow(iNullCount) = i;
            end
        end
    end
%catch
%    fprintf('Ошибка при составлении СНН\n');
%end

end

