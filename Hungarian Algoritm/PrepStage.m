function [iMat] = PrepStage(IMatSize,iMat)
%try
%��������������� ����
    global bDeb;
    if bDeb == true
       
       cprintf('*blue','��������������� ����:\n'); 
    end
    %��������� ������� �������� ������� �� ������������� �������� �������
    iMat=MinusMinColumn(IMatSize,iMat);
    if bDeb == true
       disp('��������� �� ������� �������� ������� ������������ �������� �������');
       disp(iMat); 
    end
    %��������� ������������ �������� ������ �� ������� �������� ������
    iMat=MinusMinRow(IMatSize, iMat);
    if bDeb == true
       disp('��������� �� ������� �������� ������ ������������ �������� ������');
       disp(iMat); 
    end
%catch
%    fprintf('������ �� ��������������� ����� ���������\n');
%end

end

