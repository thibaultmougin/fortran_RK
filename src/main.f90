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
  
  double precision, dimension(nb_pts,1) :: u

  double precision ::  un = 1., t =0., delta_t = 0.1

  u(1,1) = 1.
  

  do i = 1,nb_pts-1

    u(i+1,:)=euler_exp(u(i,:),t,delta_t,f)

    t=t+delta_t

  end do 

  print*, "Writing to data.dat"

  open(1, file = 'data.dat', status = 'replace')  
   do i=1,nb_pts  
      write(1,*) x(i), u(i,1)   
   end do  
   
   close(1) 

end program main