program Adding
    implicit none
    integer :: N = 5 , i
    integer, dimension(5) :: a , b , S

    a = 1
    b = 2


    do i = 1, N

       S(i) = a(i) + b(i)
       
    end do

    print *, S
end program Adding
