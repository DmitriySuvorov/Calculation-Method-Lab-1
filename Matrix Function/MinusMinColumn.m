function [iMat] = MinusMinColumn(IMatSize,iMat)
%��������� ������������ � ������ �������
%try
    for j = 1:IMatSize
        arrCol = GetColumn(j,iMat); %arrCol - ������� �������
        ColMin = FindMin(arrCol); %ColMax - ����������� ������� � �������
        for i = 1:IMatSize
            iMat(i,j) = iMat(i,j)- ColMin;
        end
    end
% catch
%     fprintf('������ ��� ��������� ������������� �������� �  %.1d �������\n',j);
end

