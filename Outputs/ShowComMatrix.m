function ShowComMatrix(PlusItemsCol,arrComNull,iMat)
%����� ��� �� ����� (��� ����������� ������)
%try
    fprintf('������������ ������� ������� [%.1d;%.1d] ������� �������:\n',arrComNull(2),arrComNull(1));
    k = -1; %k - ����� �������, � �������� ������� "+"
    for i = 1:length(PlusItemsCol)
        if arrComNull(1) == PlusItemsCol(i)
            k = i;
        end
    end

%����� "+" ��� ���������
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
             if arrComNull(1) == i && arrComNull(2) == j
                cprintf('*red','%.1d   ',iMat(i,j));
            elseif PlusItemsCol(j) == i
                cprintf('*blue','%.1d   ',iMat(i,j));
            else
                fprintf('%.1d   ',iMat(i,j));
             end
        end 
        fprintf('\n');
    end
    if k ~= -1
        fprintf('������ %.1d ������� "+", ������ ��������� �� ������� %.1d:\n',arrComNull(1),k); 
    end
%catch
%    fprintf('������ ��� ����������� ���\n');
%end
end

