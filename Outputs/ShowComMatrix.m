function ShowComMatrix(PlusItemsCol,arrComNull,iMat)
%Вывод СНН на экран (для наглядности выбора)
%try
    fprintf('Невыделенный нулевой элемент [%.1d;%.1d] выделен красным:\n',arrComNull(2),arrComNull(1));
    k = -1; %k - номер столбца, с которого убираем "+"
    for i = 1:length(PlusItemsCol)
        if arrComNull(1) == PlusItemsCol(i)
            k = i;
        end
    end

%вывод "+" над столбцами
fprintf('   ');
    for i = 1:length(PlusItemsCol)
        if PlusItemsCol(i) ~= -1
            fprintf('+');
        else
            fprintf(' ');
        end
        fprintf('   ');
    end 
    fprintf('\n');
%Вывод матрицы с обозначением невыделенного элемента
    for i = 1:length(PlusItemsCol)
        fprintf('   ');
        for j = 1:length(PlusItemsCol)
             if arrComNull(1) == i && arrComNull(2) == j
                cprintf('*red','%.1d   ',iMat(i,j));
            elseif PlusItemsCol(j) == i
                cprintf('*blue','%.1d   ',iMat(i,j));
            else
                fprintf('%.1d   ',iMat(i,j));
             end
        end 
        fprintf('\n');
    end
    if k ~= -1
        fprintf('Строку %.1d пометим "+", уберем выделение со столбца %.1d:\n',arrComNull(1),k); 
    end
%catch
%    fprintf('Ошибка при простроении СНН\n');
%end
end

