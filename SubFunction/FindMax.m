function [iMax] = FindMax(iArr)
%Нахождение максимального числа. На вход принимается массив
try
iMax = iArr(1);
    for i = 1:length(iArr)
        if iArr(i)>iMax
            iMax = iArr(i); 
        end
    end
catch
    fprintf('Ошибка при поиске максимума\n');
end
end