module functions
    implicit none

    integer, parameter :: dim = 1
    double precision, parameter :: epsilon = 0.1

    contains 

function g(x) result(gres)
    implicit none
    double precision, intent(in) :: x
    double precision, dimension(1:dim) :: gres
    

    gres=x**2
    
end function 

end module functions