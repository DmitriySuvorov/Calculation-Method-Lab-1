function ShowComMatrix(iNullCount,PlusItemsCol,arrComNull,iMat)
%����� ��� �� ����� (��� ����������� ������)
%try

    fprintf('������������ ������� ������� [%.1d;%.1d] ������� �������:\n',arrComNull(2),arrComNull(1));
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
%����� ������� � ������������ ������������� ��������
    for i = 1:length(PlusItemsCol)
        fprintf('   ');
        for j = 1:length(PlusItemsCol)
            bColor = false;
            if PlusItemsCol(j) == i
                bColor = true;
            end
            if arrComNull(1) == i && arrComNull(2) == j
                cprintf('*red','%.1d   ',iMat(i,j));
            elseif bColor == true
                cprintf('*blue','%.1d   ',iMat(i,j));
            else
                fprintf('%.1d   ',iMat(i,j));
            end
        end 
        fprintf('\n');
    end
    fprintf('������ %.1d ������� "+", ������ ��������� �� ������� %.1d:\n',arrComNull(1),arrComNull(2)); 
%catch
%    fprintf('������ ��� ����������� ���\n');
%end
end

