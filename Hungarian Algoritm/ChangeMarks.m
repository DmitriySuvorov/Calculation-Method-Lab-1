function [PlusItems,arrComRow] = ChangeMarks(PlusItems,iComCol,iComRow,arrComRow)
%������ "+" �� �������, ����������� "+" �� ������
    try
        %������ ��������� �� �������
        for i=1:length(PlusItems)
            if PlusItems(i) == iComRow(length(iComRow));
                PlusItems(i) = -1;
            end
        end
        %��������� ������
        arrComRow(iComRow(length(iComRow))) = 1;
    catch
        throw('������ ��� ������ ��������� �� �������/��������� ������\n');
    end
end