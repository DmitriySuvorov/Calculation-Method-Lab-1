function [iMat,OptSumm] = OptDecision(iPlusNull)
%���������� ������������ �������
try
    global InputMat;
    %���������� �������, ����� � ���������� ����� ��������� ���������
    %�������� ������� ��������� ������������� � 0;
    %OptSumm - �������� ������� �������
    OptSumm = 0;
    for i = 1:length(iPlusNull)
        for j = 1:length(iPlusNull)
            if iPlusNull(j) == i
                iMat(i,j) = InputMat(i,j);
            else
                iMat(i,j) = 0;
            end
            OptSumm = OptSumm + iMat(i,j);
        end
    end
catch
    throw('������ ��� ���������� ������������ �������\n');
end
end