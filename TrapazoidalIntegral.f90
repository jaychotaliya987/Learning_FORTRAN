program TrapazoidalIntegral
    implicit none
    real :: left_bound, Right_bound
    integer :: No_of_intervals

    left_bound = 1.0
    Right_bound = 3.14
    No_of_intervals = 1000


    print *, integral(left_bound,Right_bound,No_of_intervals)

    !functions for integration
    contains
        function func(x) result(y)
        implicit none
        REAL, INTENT(IN) :: x
        REAL :: y
        y = sin(x)
        end function func

        function integral(a,b,n) result(inte)
        implicit none
        real :: inte
        real :: h, b, a
        integer :: n, i

        h = (b-a)/n
        inte = 0
        do i = 1, n-1
            inte = inte + func(a+i*h)
        end do 
        inte = inte*h
        end function integral

    end program TrapazoidalIntegral
