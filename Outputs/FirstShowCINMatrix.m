function FirstShowCINMatrix(iNullCount,PlusItemsCol,arrComNull,iMat)
%����� ��� �� ����� (��� ����������� ������)
%try
fprintf('���:\n');

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
        fprintf('\n');
    end
    
    fprintf('���������� ������������ ������� ���������: %.1d\n',iNullCount);
%catch
%    fprintf('������ ��� ����������� ���\n');
%end
end

