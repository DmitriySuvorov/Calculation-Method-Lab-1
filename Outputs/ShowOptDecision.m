function ShowOptDecision(iMat,Sum,iNull)
%Вывод оптимального решения
    cprintf('*blue', 'Оптимальное решение:\n');
    disp(iMat);
    cprintf('*blue','Значание целевой функции:');
    for j = 1:length(iNull)
        cprintf('*blue',' %.1d',iMat(iNull(j),j));
        if j ~= length(iNull)
             cprintf('*blue',' +');
        end
    end
    cprintf('*blue', ' = %.1d\n',Sum);
end

