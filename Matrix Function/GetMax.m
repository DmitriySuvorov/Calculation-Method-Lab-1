function [Max] = GetMax(iMatSize,iMat);
%���������� ������������� �������� � �������
    try
        Max = iMat(1,1);
        for i = 1:iMatSize
            for j = 1:iMatSize
                if iMat(i,j) > Max
                    Max = iMat(i,j)
                end
            end
        end
    catch
        throw('������ ��� ���������� ������������� �������� �������\n');
    end
end