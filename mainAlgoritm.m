function mainAlgoritm(InputType,TaskType,ShowType)
global InputMat;
global bDeb;
            
switch InputType
    case 1
        InputMat=[6 10 4 5 8;
                 8 10 7 9 11;
                 4 8 9 10 6;
                 5 9 6 11 10;
                 6 11 6 3 9];
         iMatSize = 5;
    case 2 
        iMatSize = input('¬ведите пор€док матрицы: ');
        InputMat = randi([0 99],iMatSize,iMatSize);
    case 3
        [iMatSize, InputMat] = MatrixInput;
end

switch TaskType
    case 1
        iMat=InputMat;
    case 2
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
        

%[iMatSize, InputMat] = MatrixInput;
% iMatSize = input('¬ведите пор€док матрицы: ');
%  InputMat = randi([0 99],iMatSize,iMatSize);

% InputMat=[18    36   121   144    22    48    92    77   147    80    83    85    77   129   144;
%     73    37    43    97    55    83    50   138    20   124   150   145    46    96    86;
%     92    58    73    94    82   147   126    87    92    60   130    26    62    63    86;
%    106   141    90    34    18   110    36    14    68    20   145    17   103   133    53;
%    111    65    18    22   112    53    72    17    53    93   105    52    33   120    20;
%    101    48    79    45    88    51    65   123    47   138    66    91    49    75    35;
%    112    31   100   131    84   129   126    73   116    37   141    84    37   124    23;
%     62    65    41   138   127   138   105    63   150    70    77   137    37   136    75;
%     92    62   128   108   131   100    39   121    36   115    42    86    56    70    11;
%     26    28   146   112   121    46    54    61   120    15    65    70   134    57   139;
%     18    71   129    42    54    22    28    85    37   143   109    86    76    94   100;
%    148    22    81    91    73   128   104   110   149   117    88   110    66   137    10;
%     50    96    49   124   116    92    90   132   123    88   116    12    35   108    14;
%     93    11   115    66    25   143    33    56    69    35   150   122   146    63    39;
%    145    90    43   149    25    18    30   101   112    80   145    30    67   113    74]

disp(InputMat);




iMat = PrepStage(iMatSize,iMat);
iMat = GeneralStage(iMatSize,iMat);
end
