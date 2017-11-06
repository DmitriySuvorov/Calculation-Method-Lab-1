function [Max] = GetMax(iMatSize,iMat);
%Нахождение максимального элемента в матрице
    try
        Max = iMat(1,1);
        for i = 1:iMatSize
            for j = 1:iMatSize
                if iMat(i,j) > Max
                    Max = iMat(i,j)
                end
            end
        end
    catch
        throw('Ошибка при нахождении максимального элемента матрицы\n');
    end
end