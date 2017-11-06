function mainAlgoritm(InputType,TaskType,ShowType)
%Основная программа
%InputMat - исходная матрица
%bDeb - True/False. Выводить/не выводить решение
%iMat - Матрица = входной. Для выполнения преобразований
%iMatSize - размерность матрицы
    global InputMat;
    global bDeb;
    try
        %Определения типа ввода/типа задачи/режима вывода
        switch InputType
            case 1
                InputMat=[6 10 4 5 8;
                         8 10 7 9 11;
                         4 8 9 10 6;
                         5 9 6 11 10;
                         6 11 6 3 9];
                 iMatSize = 5;
            case 2 
                iMatSize = input('Введите порядок матрицы: ');
                InputMat = randi([0 99],iMatSize,iMatSize);
            case 3
                [iMatSize, InputMat] = MatrixInput;
        end
        switch TaskType
            case 1
                iMat=InputMat;
                %Вывод исходной матрицы
                fprintf('Исходная матрица:\n');
                disp(InputMat)
            case 2
                %Вывод исходной матрицы
                fprintf('Исходная матрица:\n');
                disp(InputMat);
                iMat=InputMat;
                Max = GetMax(iMatSize,iMat);
                iMat = MaxOptTask(iMat,iMatSize,Max);       
        end
        switch ShowType
            case 1
                bDeb = true;
            case 2
                bDeb = false;
        end
        %Преварительый этап алгоритма
        iMat = PrepStage(iMatSize,iMat);
        %Основной этап алгоритма
        iMat = GeneralStage(iMatSize,iMat);
    catch
        throw('Ошибка в основной подпрогамме\n');
    end
end
