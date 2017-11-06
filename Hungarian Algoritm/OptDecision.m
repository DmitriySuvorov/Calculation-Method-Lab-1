function [iMat,OptSumm] = OptDecision(iPlusNull)
%Построение оптимального решения
try
    global InputMat;
    %Построение матрицы, места с выделенным нулем заполняем значением
    %исходной матрицы остальные устанавливаем в 0;
    %OptSumm - значение целевой функции
    OptSumm = 0;
    for i = 1:length(iPlusNull)
        for j = 1:length(iPlusNull)
            if iPlusNull(j) == i
                iMat(i,j) = InputMat(i,j);
            else
                iMat(i,j) = 0;
            end
            OptSumm = OptSumm + iMat(i,j);
        end
    end
catch
    throw('Ошибка при построении оптимального решения\n');
end
end