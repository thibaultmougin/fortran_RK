module RK
    implicit none 

    contains

    subroutine f(x, t, y)
        double precision :: x, t  

        double precision ::  y 

        y = x**2
        
    end subroutine 

    function RK_exp(un, t, f, A, b, c) result(u)

        double precision, intent(in) :: un, b(:), c(:), t 
        double precision, intent(in) :: A(:,:)
        double precision :: u 
        external f

        call f(un, t, u)

    end function 


end module 