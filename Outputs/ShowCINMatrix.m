function ShowCINMatrix(iNullCount,PlusItemsCol,arrComNull,iMat)
%����� ��� �� ����� (��� ����������� ������)
%try
fprintf('���:\n');
%����� ��������
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
            bColor = false;
            if PlusItemsCol(j) == i
                bColor = true;
            end
            if bColor == true
                cprintf('*blue','%.1d   ',iMat(i,j));
            else
                fprintf('%.1d   ',iMat(i,j));
            end
        end 
        if arrComNull(1) == i
            fprintf(' +');
        end
        fprintf('\n');
    end
    
    fprintf('���������� ������� ���������: %.1d\n',iNullCount);
%catch
%    fprintf('������ ��� ����������� ���\n');
%end
end

