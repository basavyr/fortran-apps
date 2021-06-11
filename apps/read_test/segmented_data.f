  !F_DATA = (/4.243, 5.058,5.870,6.748,7.565,8.500,9.546,10.665,11.871,13.159,14.509,15.895,17.325,18.805,20.381,22.029,23.820,25.794 /)

      REAL, DIMENSION(5) :: SEGMENT1,SEGMENT2,SEGMENT3
      REAL, DIMENSION(3) :: SEGMENT0

      SEGMENT1 = (/4.243, 5.058,5.870,6.748,7.565 /)
      SEGMENT2 = (/8.500, 9.546,10.665,11.871,13.159 /)
      SEGMENT3 = (/14.509, 15.895,17.325,18.805,20.381 /)
      SEGMENT0 = (/22.029, 23.820,25.794 /)    
    
     !Write segmented data into the second file -> BA120M.DAT
      
      !Write segment1
      DO I=1,5
        WRITE(FD_2,*) SEGMENT1(I)
      END DO

      !Write segment2
      DO I=1,5
        WRITE(FD_2,*) SEGMENT2(I)
      END DO

      !Write segment3
      DO I=1,5
        WRITE(FD_2,*) SEGMENT3(I)
      END DO

      !Write segment0
      DO I=1,3
        WRITE(FD_2,*) SEGMENT0(I)
      END DO
      
      !Close the descriptor of the second file
      CLOSE(FD_2)