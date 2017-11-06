function [bHasNull,iComRow,iComCol] = CheckUnmarkedNull(PlusItemsCol,iMat,arrComRow,iComRow,iComCol)
%����� ���� ����� ������������ ��������� 
%������� ���������: ������� � ������, ����� �������� �������� ��������� ��
%�������� �������, � �������� = -1, ���� � ������� ��� 0*, � �����
%������ ���� ����
%�����: True - ���� ���� ������� ��������; False - ���� ���. �������
%���������� 0'
try
    bHasNull = false;
        for j = 1:size(iMat,1)
            %������� ��� ������ � ������������ ��������
            if PlusItemsCol(j) == -1
                for i = 1:size(iMat,1)
                    %������� ��� ������ �� ������������ �������
                    if arrComRow(i) == 0
                        if iMat(i,j) == 0
                            bHasNull = true;
                            iNull = i;
                            jNull = j;
                        end
                    end
                end
            end
        end

        if bHasNull
            iComRow = MyPush(iComRow,iNull);
            iComCol = MyPush(iComCol,jNull);
        end
    catch
        throw('������ ��� ������ ������������� �������� ��������\n');
    end
end