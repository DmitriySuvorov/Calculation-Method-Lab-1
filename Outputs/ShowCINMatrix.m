function ShowCINMatrix(PlusItemsCol,arrNull,iMat,iComRow,iComCol)
%����� ��� �� ����� (��� ����������� ������)
try
    arrNull(iComRow(length(iComRow))) = 1;
    fprintf('\n');
    %����� ������ 
    fprintf('   ');
        for i = 1:length(PlusItemsCol)
            if PlusItemsCol(i) ~= -1
                fprintf('+');
            else
                fprintf(' ');
            end
            fprintf('   ');
        end 
        fprintf('\n');
    %����� ������� � ���������� ��� ������ �������   
        for i = 1:length(PlusItemsCol)
            fprintf('   ');
            for j = 1:length(PlusItemsCol)
                bBlue = false;
                bRed = false;
                for c = 1:length(iComCol)
                    if iComCol(c) == j && iComRow(c) == i
                        bRed = true;
                    end
                end
                if PlusItemsCol(j) == i
                    bBlue = true;
                end
                if bRed%iComRow(length(iComRow)) == i && iComCol(length(iComCol))== j
                    cprintf('*red','%.1d   ',iMat(i,j));
                 elseif PlusItemsCol(j) == i
                    cprintf('*blue','%.1d   ',iMat(i,j));
                 else
                    fprintf('%.1d   ',iMat(i,j));
                 end
            end 
            if arrNull(i) ~= 0
                fprintf(' +');
            end
            fprintf('\n');
        end
catch
    fprintf('������ ��� ����������� ���\n');
end
end

