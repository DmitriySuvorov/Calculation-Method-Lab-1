function [PlusItems,iPlusNull] = ChangePlus(PlusItems,arrComItems)
%Выделение "+" строки с 0', снятие "+" со столбца с 0*

for i = 1:length(PlusItems)
    if PlusItems(i) == arrComItems(1)
        PlusItems(i) = -1;
    end
end
    PlusItems(arrComItems(2)) = arrComItems(1);
iPlusNull = 0;
for i = 1:length(PlusItems)
    if PlusItems(i) ~= -1
        iPlusNull = iPlusNull + 1;
    end
end
end

