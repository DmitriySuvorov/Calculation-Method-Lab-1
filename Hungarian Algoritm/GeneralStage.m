function [iMat] = GeneralStage(iMatSize,iMat)
%�������� ����. �� ���� �������� ������� ������� � ���� �������
%try
    global bDeb;
    [PlusItemsCol,PlusItemsRow,iPlusNull] = GetNullIndx(iMatSize,iMat);
    %PlusColumn - ����� �������� ������������� ������ �������
    %���� i-� ������ <>-1, �� � ��� ���������� ����� ������ � ���
    %PlusItemsRow -||- ��� ������

    if bDeb == true
        fprintf('���:\n');
        ShowCINMatrix(iPlusNull,PlusItemsCol,[-1 -1],iMat);
    end


    while iPlusNull < iMatSize
        %����� ����, ����� ������������ ���������
        [bHasUnmarkedNull,arrComItems] = CheckUnmarkedNull(iMat,PlusItemsCol);
        if bHasUnmarkedNull
            [PlusItemsCol,iPlusNull] = ChangePlus(PlusItemsCol,arrComItems);
        end
        if bDeb == true
            fprintf('���:\n');
            ShowComMatrix(iPlusNull,PlusItemsCol,arrComItems,iMat);
            ShowCINMatrix(iPlusNull,PlusItemsCol,arrComItems,iMat);
        end
    end
% arrComItems - � (1) ������, � (2) ������� �������� ��������

%catch
%   fprintf('������ � �������� ����� ���������\n'); 
%end
end

