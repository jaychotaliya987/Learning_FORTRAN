program arraMulti
    implicit none
    integer, dimension(5,5) :: int_array
    integer :: i,j
    int_array = 2
    print *, int_array
    do i = 1,5
        do j = 1,5
            int_array(i,j) = i*j
        end do
    end do
    print *, int_array
end program arraMulti
