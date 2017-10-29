%[iMatSize, iMat] = MatrixInput;
iMat=[60 60 61 63 60;
      59 59 60 60 61;
      59 56 65 67 60;
      53 46 44 46 49;
      54 47 44 44 23];
iMatSize = 5;
disp(iMat);
global bDeb;
bDeb = true;

iMat = PrepStage(iMatSize,iMat);
iMat = GeneralStage(iMatSize,iMat);
