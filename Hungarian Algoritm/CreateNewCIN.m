function [PlusItemsCol,PlusItemsRow,Col,Row] = CreateNewCIN(PlusItemsCol,PlusItemsRow,ComCol,ComRow)
%������ ��������� � 0*. ������ ��������� 0' -> 0*. ������ ��������� ��
%�����. ����� ��������� ��������
%��������� �������� � ������ 0*
    try
        while length(ComCol)>0 && length(ComRow)>0
            NewCol = ComCol(length(ComCol));
            NewRow = ComRow(length(ComRow));
            if length(ComCol) > 1 && length(ComRow) > 1
                    ComCol = [];
                    ComRow = [];
                for i = 1:(length(ComCol)-1)
                    ComCol(i)=Col(i);
                    ComRow(i)=Row(i);
                end
            else
                ComCol = [];
                ComRow = [];
            end
        %     [ComCol,NewCol] = MyPop(ComCol);
        %     [ComRow,NewRow] = MyPop(ComRow);
            Col = [];Row=[];
            PlusItemsCol(NewCol) = NewRow;
        end
        %������ ��������� �� �����
        PlusItemsRow = zeros(1,length(PlusItemsCol));
    catch
        throw('������ ��� ����������� L �������\n');
    end
end