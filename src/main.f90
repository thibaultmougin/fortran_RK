program main
  use functions
  implicit none 
  
  double precision, parameter :: xmin = 0.
  double precision, parameter :: xmax = 1.
  integer, parameter :: nb_pts = 10
  double precision, parameter :: dx = (xmax-xmin)/nb_pts

  integer i
  double precision ::  x(nb_pts) = dx*(/(i, i=1,nb_pts)/)
  
  print *, x
end program main