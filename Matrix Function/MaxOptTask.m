function [iMat] = MaxOptTask(iMat,iMatSize,Max);
%��������������� ������� ��� ���������� ������������� ������������ �������
%������� ���������� �� -1 � � ������� �������� ����������� �����������
%������� �������
global bDeb;
try
    iMat = iMat*(-1) + Max;
    if bDeb
        ShowPrepare(iMat,Max);
    end
catch
    throw('������ ��� �������������� � ������ �� ���������� ���������\n');
end
end