module RK
    implicit none 

    contains

    subroutine f(x, t, y)
        implicit none
        integer, parameter :: n = 1
        double precision, dimension(n) :: x,y 
        double precision :: t   
        integer i

        do i=1,size(y)
            y(i)=x(i)
        end do 
        
    end subroutine 

    function euler_exp(un, tn, delta_t, func) result(u)

        double precision, dimension(:), intent(in) :: un
        double precision :: tn, delta_t
        external func
        double precision, dimension(size(un)) ::  increment, u

        call func(un, tn, increment)

        u = un + delta_t*increment


    end function 


end module 