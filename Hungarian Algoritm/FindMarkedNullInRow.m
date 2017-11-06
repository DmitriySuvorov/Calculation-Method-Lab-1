function [NullInRow] = FindMarkedNullInRow(PlusItems,iComRow)
%Поиск 0* в строке с 0'. Возвращается True/False. 
    try
        NullInRow = false;
        for i = 1:length(PlusItems)
            if PlusItems(i) == iComRow(length(iComRow))
                NullInRow = true;
            end
        end
    catch
        throw('Ошибка при поиске 0* в строке\n');
    end
end