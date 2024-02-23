program main
  use functions
  use RK
  implicit none 
  
  double precision, parameter :: xmin = 0.
  double precision, parameter :: xmax = 1.
  integer, parameter :: nb_pts = 10
  double precision, parameter :: dx = (xmax-xmin)/nb_pts

  integer i
  double precision ::  x(nb_pts) = dx*(/(i, i=1,nb_pts)/)
  
  double precision :: u(nb_pts), un = 2., t =0.
  double precision, dimension(2) :: b=   (/ 0.5 , 0.5 /), c = (/ 0. , 1. /)

  double precision, dimension(2, 2) :: A
  A = reshape((/ 0., 1., 0., 0. /), shape(A))

  u(1) = 1.

  do i = 1,nb_pts-1
    u(i+1)=RK_exp(u(i),t,f,A,b,c)
  end do 


  open(1, file = 'data.dat', status = 'new')  
   do i=1,nb_pts  
      write(1,*) x(i), u(i)   
   end do  
   
   close(1) 

end program main