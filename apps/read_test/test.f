      PROGRAM READER
      IMPLICIT NONE
      
      REAL, DIMENSION(30):: DATA_1
      REAL, DIMENSION(30):: DATA_2
      INTEGER :: DIM_1=17,DIM_2=18
      INTEGER :: I
      INTEGER :: FD_1=20,FD_2=21

      PRINT *,"Reader Program"

      OPEN(FD_1,FILE='BA120P.DAT',STATUS='OLD')

      ! Reading the data from first file -> BA120P.DAT
      OPEN(FD_1,FILE='BA120P.DAT',STATUS='OLD')
      
      DO I=1,DIM_1
        READ(FD_1,*) DATA_1(I)
      END DO

      CLOSE(FD_1)

      DO I=1,DIM_1
       PRINT *, I, DATA_1(I)
      END DO

      END PROGRAM READER