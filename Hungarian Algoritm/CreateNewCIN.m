function [PlusItemsCol,PlusItemsRow,Col,Row] = CreateNewCIN(PlusItemsCol,PlusItemsRow,ComCol,ComRow)
%Снятие выделения с 0*. Замена выделения 0' -> 0*. Снятие выделения со
%строк. Новой выделение столбцов
%Выделение столбцов с новыми 0*
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
        %Снятие выделения со строк
        PlusItemsRow = zeros(1,length(PlusItemsCol));
    catch
        throw('Ошибка при прохождении L цепочки\n');
    end
end