function [PlusItems,iComRow,iComCol] = ChangePlus(PlusItems,iComRow,iComCol,arrComRow,iMat)
%��������� "+" ������ � 0', ������ "+" �� ������� � 0*
bNullInRow = true;
%����� ����������� �������� � ������� � 0'
while bNullInRow
    bNullInRow = false;
for j = 1:length(PlusItems) 
    if PlusItems(j) == iComRow(length(iComRow))
        %������ ��������� �� �������
        PlusItems(j) = -1;
        n = j;
        %��������� ������ � 0'
        arrComRow(iComRow(length(iComRow))) = 1;
        bNullInRow = true;
    end
end
if bNullInRow
    
for i = 1:length(PlusItems)
    if iMat(i,n) == 0 && arrComRow(i) == 0
        iComCol = MyPush(iComCol,i);
        iComRow = MyPush(iComRow,n);
        
    end
end
end
end
if bNullInRow == false
    while length(iComCol)>0 && length(iComRow)>0
        [iComCol,iNewNullCol] = MyPop(iComCol);
        [iComRow,iNewNullRow] = MyPop(iComRow);
        PlusItems(iNewNullCol) = iNewNullRow;
    end
    arrComRow = zeros(1,length(PlusItems));
end  
end 

