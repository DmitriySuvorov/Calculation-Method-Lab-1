%[iMatSize, iMat] = MatrixInput;
iMat=[6 10 4 5 8;
      8 10 7 9 11;
      4 8 9 10 6;
      5 9 6 11 10;
      6 11 6 3 9];
iMatSize = 5;
disp(iMat);
global bDeb;
bDeb = true;

iMat = PrepStage(iMatSize,iMat);
iMat = GeneralStage(iMatSize,iMat);
