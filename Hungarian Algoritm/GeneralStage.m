function [iMat] = GeneralStage(iMatSize,iMat)
%�������� ����. �� ���� �������� ������� ������� � ���� �������
%try
    global bDeb;
    [arrPlusCol,arrPlusRow,iNullCount] = GetNullIndx(iMatSize,iMat);
    if bDeb == true
        fprintf('���:\n');
        ShowCINMatrix(iNullCount,arrPlusRow,arrPlusCol)
    end
        
%catch
%   fprintf('������ � �������� ����� ���������\n'); 
%end
end

