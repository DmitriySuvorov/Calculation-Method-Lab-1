function [iMatSize,iMat] = MatrixInput
%Ввод матрицы. Выходные аргум
try
    jcounter = 0;
    iMatSize = 0;
    while iMatSize <= 0
        iMatSize = input('Введите порядок матрицы: ');
    end 
    iMat = zeros(iMatSize,iMatSize);    %создание матрицы, заполненной нулями
    for i = 1:iMatSize
        for j = 1:iMatSize
            iMat(i,j) = -1;
            while iMat(i,j)<0
                jcounter = jcounter+1;
                fprintf('Введите %.1d элемент: ',jcounter);
                iMat(i,j) = input('');
            end
        end
    end
catch
    disp('Ошибка ввода матрицы\n');
end
end
