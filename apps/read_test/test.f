      PROGRAM READER
      IMPLICIT NONE
      
      REAL, DIMENSION(30):: DATA_1
      REAL, DIMENSION(30):: DATA_2
      INTEGER :: I

      PRINT *,"Reader Program"

      DO I =1,5
       DATA_1(I)=1
      END DO

      PRINT *, DATA_1

      END PROGRAM READER