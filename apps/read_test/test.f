      PROGRAM READER
      IMPLICIT NONE
      
      !Arrays for storing the experimental data from the two input files
      !Store data from first file and the second file
      REAL, DIMENSION(30):: DATA_1,DATA_2

      REAL, DIMENSION(5) :: F_DATA


      !Size of the two arrays
      INTEGER :: DIM_1=17,DIM_2=18
      
      !Labels for the file descriptors that are used for opening and closing files: Must be integers
      INTEGER :: FD_1=20,FD_2=21
      
      !Iterator
      INTEGER :: I

      !F_DATA = (/4.243, 5.058,5.870,6.748,7.565,8.500,9.546,10.665,11.871,13.159,14.509,15.895,17.325,18.805,20.381,22.029,23.820,25.794 /)

      F_DATA = (/4.243, 5.058,5.870,6.748,7.565 /)

      PRINT *,"Reader Program"

      !Opening the first data file
      OPEN(FD_1,FILE='BA120P.DAT',STATUS='OLD')

      ! Reading the data from first file -> BA120P.DAT
      DO I=1,DIM_1
        READ(FD_1,*) DATA_1(I)
      END DO
      !Close the descriptor of the first file
      CLOSE(FD_1)

      !Open the second file
      OPEN(FD_2,FILE='BA120M.DAT',STATUS='OLD')

      !Read the data from the second file -> BA120M.DAT
      DO I=1,5
        WRITE(FD_2,*) F_DATA(I)
      END DO
      !Close the descriptor of the second file
      CLOSE(FD_2)


      DO I=1,DIM_1
       PRINT *, I, DATA_1(I)
      END DO

      END PROGRAM READER