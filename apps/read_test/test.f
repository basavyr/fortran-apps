      PROGRAM READER
      IMPLICIT NONE
      
      REAL, DIMENSION(30):: DATA_1
      REAL, DIMENSION(30):: DATA_2
      INTEGER :: I

      PRINT *,"Reader Program"

      DO I =1,17
       DATA_1(I)=1
      END DO

      OPEN(1,FILE='DATA1.DAT',STATUS='OLD')

      DO I=1,17
        WRITE(1,*) DATA_1(I)
      END DO

      CLOSE(1)

      DO I=1,17
        PRINT *, I, DATA_1(I), 2*SIN(DATA_1(I))
      END DO

      END PROGRAM READER