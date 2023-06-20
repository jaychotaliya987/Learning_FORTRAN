program conditional
    ! Program that demonstrates the use of the conditional statements
    ! do , if, cycle, exit and do while
    ! Cycle will skip the loop if the condition is met
    ! this do loop will print the numbers 1 to 10 but will skip the numbers
    ! greater than 5
    ! but the exit statement completely shuts off the excicution
    ! Hance it will print only 1 to 4
    implicit none
    integer :: i

    do i = 1,10
        if (i.gt.5) then
            cycle
        endif
        if (i > 4) then
            exit
        endif
        print *, i
    end do


! This DO WHILE loop will print the word "Hello" 10 times
    i = 0
    do while (i < 10)
        i = i + 1
        print *, "Hello"
    end do

end program conditional
