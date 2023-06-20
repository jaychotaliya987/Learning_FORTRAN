program arrays
    implicit none
    integer, dimension(4,4) :: Arr
    Arr = 1
    Arr(1,2) = 2
    Arr(2,:) = 3
    Arr(:,3) = 4
    print *, Arr
end program arrays