function [iMat] = PrepStage(IMatSize,iMat)
%Предварительный этап
    try
        global bDeb;
        if bDeb   
           cprintf('*blue','Предварительный этап:\n'); 
        end
        %Вычитание каждого элемента столбца из максимального элемента столбца
        iMat=MinusMinColumn(IMatSize,iMat);
        if bDeb
           disp('Вычитание из каждого элемента столбца минимального элемента столбца');
           disp(iMat); 
        end
        %Вычитание минимального элемента строки из каждого элемента строки
        iMat=MinusMinRow(IMatSize, iMat);
        if bDeb
           disp('Вычитание из каждого элемента строки минимального элемента строки');
           disp(iMat); 
        end
    catch
        fprintf('Ошибка на предварительном этапе алгоритма\n');
    end
end

