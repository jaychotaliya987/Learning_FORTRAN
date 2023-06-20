program integral
    implicit none
    double precision :: beta , integ
    integer :: n ,i
    double precision, dimension(:),allocatable :: x, y

    n = 500
    beta = 1d0
    allocate(x(n))
    allocate(y(n))

    do i = 1, n
        x(i) = i/10.0d0
    end do

    do i = 1, n
        y(i) = 2.71d0 ** (-x(i)**2/beta**2)
    end do

    integ = 2*sum(y)
    print *, integ
end program integral


