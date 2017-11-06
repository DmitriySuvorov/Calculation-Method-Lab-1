function [iMin] = FindMin(iArr)
%Нахождение минимального числа. На вход принимается массив
    try
        iMin = iArr(1);
            for i = 1:length(iArr)
                if iArr(i)<iMin
                    iMin = iArr(i); 
                end
            end
    catch
        fprintf('Ошибка при поиске минимума\n');
    end
end


