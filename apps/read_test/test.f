      PROGRAM READER
      IMPLICIT NONE
      
      !Arrays for storing the experimental data from the two input files
      !Store data from first file and the second file
      REAL, DIMENSION(30):: DATA_1,DATA_2

      !Size of the two arrays
      INTEGER :: DIM_1=17,DIM_2=18
      
      !Labels for the file descriptors that are used for opening and closing files: Must be integers
      INTEGER :: FD_1=20,FD_2=21
      
      !Iterator
      INTEGER :: I

      PRINT *,"Reader Program"

      !Opening the first data file
      OPEN(FD_1,FILE='BA120P.DAT',STATUS='OLD')

      ! Reading the data from first file -> BA120P.DAT
      DO I=1,DIM_1
        READ(FD_1,*) DATA_1(I)
      END DO
      !Close the descriptor of the first file
      CLOSE(FD_1)


      DO I=1,DIM_1
       PRINT *, I, DATA_1(I)
      END DO

      END PROGRAM READER