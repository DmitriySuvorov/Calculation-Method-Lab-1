function [iMatSize,iMat] = MatrixInput
%���� �������. �������� �����
try
    jcounter = 0;
    iMatSize = 0;
    while iMatSize <= 0
        iMatSize = input('������� ������� �������: ');
    end 
    iMat = zeros(iMatSize,iMatSize);    %�������� �������, ����������� ������
    for i = 1:iMatSize
        for j = 1:iMatSize
            iMat(i,j) = -1;
            while iMat(i,j)<0
                jcounter = jcounter+1;
                fprintf('������� %.1d �������: ',jcounter);
                iMat(i,j) = input('');
            end
        end
    end
catch
    disp('������ ����� �������\n');
end
end
