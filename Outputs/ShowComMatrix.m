function ShowComMatrix(PlusItemsCol,iMat,iterCount,iComRow,iComCol)
%����� ��� �� ����� (��� ����������� ������)
%try
for i = 1:40
    fprintf('-');
end
fprintf('\n����� ��������: %.1d\n',iterCount);
fprintf('������������ ������� ������� [%.1d;%.1d] ������� �������:\n',iComCol(length(iComCol)),iComRow(length(iComRow)));
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
            bRed = false;
            for c = 1:length(iComCol)
                if iComCol(c) == j && iComRow(c) == i
                    bRed = true;
                end
                
            end
             if bRed
                cprintf('*red','%.1d   ',iMat(i,j));
             elseif PlusItemsCol(j) == i
                cprintf('*blue','%.1d   ',iMat(i,j));
             else
                fprintf('%.1d   ',iMat(i,j));
             end
        end 
        fprintf('\n');
    end
        fprintf('������ %.1d ������� "+", ������ ��������� �� �������,  � ������� ��������� ����� ���� %.1d:\n',iComRow(length(iComRow))); 
end
%catch
%    fprintf('������ ��� ����������� ���\n');
%end


