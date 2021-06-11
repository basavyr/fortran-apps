program outputdata   
implicit none   

   
   integer :: i  
   integer :: dim_data=5
   real, dimension(100) :: data_1,data_2
   real, dimension(100) :: p,q
   integer :: fd_1=20,fd_2=21
   
   ! data  
   do i=1,dim_data  
      data_1(i) = i 
      data_2(i) = 2*i  
   end do  
   
   ! output data into a file 
   open(fd_1, file = 'data1.dat', status='new')  
   do i=1,dim_data  
      write(fd_1,*) data_1(i), data_2(i) 
   end do  
   close(fd_1)

   ! opening the file for reading
   open (fd_2, file = 'data1.dat', status = 'old')

   do i = 1,dim_data  
      read(fd_2,*) p(i), q(i)
   end do 
   
   close(fd_2)
   
   do i = 1,dim_data  
      write(*,*) p(i), q(i)
   end do 
   
end program outputdata