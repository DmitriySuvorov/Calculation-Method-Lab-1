function [NullInRow] = FindMarkedNullInRow(PlusItems,iComRow)
%����� 0* � ������ � 0'. ������������ True/False. 
    try
        NullInRow = false;
        for i = 1:length(PlusItems)
            if PlusItems(i) == iComRow(length(iComRow))
                NullInRow = true;
            end
        end
    catch
        throw('������ ��� ������ 0* � ������\n');
    end
end