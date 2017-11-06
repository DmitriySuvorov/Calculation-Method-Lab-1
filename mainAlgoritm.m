function mainAlgoritm(InputType,TaskType,ShowType)
%�������� ���������
%InputMat - �������� �������
%bDeb - True/False. ��������/�� �������� �������
%iMat - ������� = �������. ��� ���������� ��������������
%iMatSize - ����������� �������
    global InputMat;
    global bDeb;
    try
        %����������� ���� �����/���� ������/������ ������
        switch InputType
            case 1
                InputMat=[6 10 4 5 8;
                         8 10 7 9 11;
                         4 8 9 10 6;
                         5 9 6 11 10;
                         6 11 6 3 9];
                 iMatSize = 5;
            case 2 
                iMatSize = input('������� ������� �������: ');
                InputMat = randi([0 99],iMatSize,iMatSize);
            case 3
                [iMatSize, InputMat] = MatrixInput;
        end
        switch TaskType
            case 1
                iMat=InputMat;
                %����� �������� �������
                fprintf('�������� �������:\n');
                disp(InputMat)
            case 2
                %����� �������� �������
                fprintf('�������� �������:\n');
                disp(InputMat);
                iMat=InputMat;
                Max = GetMax(iMatSize,iMat);
                iMat = MaxOptTask(iMat,iMatSize,Max);       
        end
        switch ShowType
            case 1
                bDeb = true;
            case 2
                bDeb = false;
        end
        %������������� ���� ���������
        iMat = PrepStage(iMatSize,iMat);
        %�������� ���� ���������
        iMat = GeneralStage(iMatSize,iMat);
    catch
        throw('������ � �������� �����������\n');
    end
end
