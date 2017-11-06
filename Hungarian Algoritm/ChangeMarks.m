function [PlusItems,arrComRow] = ChangeMarks(PlusItems,iComCol,iComRow,arrComRow)
%Снятие "+" со столбца, выставление "+" на строки
    try
        %Снятие выделение со столбца
        for i=1:length(PlusItems)
            if PlusItems(i) == iComRow(length(iComRow));
                PlusItems(i) = -1;
            end
        end
        %Выделение строки
        arrComRow(iComRow(length(iComRow))) = 1;
    catch
        throw('Ошибка при снятии выделения со столбца/выделении строки\n');
    end
end