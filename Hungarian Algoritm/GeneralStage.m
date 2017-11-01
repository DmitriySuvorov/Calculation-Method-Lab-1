function [iMat] = GeneralStage(iMatSize,iMat)
%�������� ����. �� ���� �������� ������� ������� � ���� �������
%try
    global bDeb;
    [PlusItemsCol,PlusItemsRow,iPlusNull] = GetNullIndx(iMatSize,iMat);
    %PlusColumn - ����� �������� ������������� ������ �������
    %���� i-� ������ <>-1, �� � ��� ���������� ����� ������ � ���
    %PlusItemsRow -||- ��� ������

     if bDeb == true
         FirstShowCINMatrix(iPlusNull,PlusItemsCol,[-2 -2],iMat);
     end


    while iPlusNull < iMatSize
        %����� ����, ����� ������������ ���������
        [bHasUnmarkedNull,arrComItems] = CheckUnmarkedNull(iMat,PlusItemsCol);
        if bHasUnmarkedNull
            if bDeb == true
                ShowComMatrix(PlusItemsCol,PlusItemsRow,arrComItems,iMat);
            end
            [PlusItemsCol,iPlusNull] = ChangePlus(PlusItemsCol,arrComItems);
        end
        if bDeb == true
            ShowCINMatrix(iPlusNull,PlusItemsCol,arrComItems,iMat);
        end
    end
% arrComItems - � (1) ������, � (2) ������� �������� ��������

%catch
%   fprintf('������ � �������� ����� ���������\n'); 
%end
end

