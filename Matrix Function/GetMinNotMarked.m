function Min = GetMinNotMarked(iMat,PlusItemsCol,arrComRow)
%Нахождение минималаьного элемента среди невыделенных
    bFirstMin = true;%Для присваения минимума первого твстреченного невыделенного элемента
    for i = 1:length(PlusItemsCol)
        %Условие поиска в невыделенных строках
        if arrComRow(i) == 0
            for j=1:length(PlusItemsCol)
                %Условие поиска в невыделенных столбцах
                if PlusItemsCol(j) == -1
                    if bFirstMin
                        Min = iMat(i,j);
                        bFirstMin = false;
                    elseif iMat(i,j) < Min
                        Min = iMat(i,j);
                    end
                end
            end
        end
    end
end