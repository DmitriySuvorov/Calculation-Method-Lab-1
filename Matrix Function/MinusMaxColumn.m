function [iMat] = MinusMaxColumn(IMatSize,iMat)
%��������� ��������� ������� �� ������������� � �������
try
    for j = 1:IMatSize
        arrCol = GetColumn(j,iMat); %arrCol - ������� �������
        ColMax = FindMax(arrCol); %ColMax - ������������ ������� � �������
        for i = 1:IMatSize
            iMat(i,j) = ColMax - iMat(i,j);%��������� ��������� �������
                                           %�� �������������
        end
    end
catch
    fprintf('������ ��� ��������� ������������� �������� �  %.1d �������\n',j);
end

