program Darray
    implicit none
    integer :: n
    integer, dimension(:), allocatable :: int_array
    double precision, dimension(:,:), allocatable :: dp_array

    n = 8

    allocate(int_array(10))
    allocate(dp_array(n,n))
    print *, int_array
end program Darray 