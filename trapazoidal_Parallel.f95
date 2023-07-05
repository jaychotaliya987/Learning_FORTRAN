program Trap_parallel
    use omp_lib
    implicit none
    real, external :: func, integral
    real :: left_bound, right_bound, total_integral
    integer :: No_of_intervals

    left_bound = 1.0
    right_bound = 3.14
    No_of_intervals = 1000

    total_integral = 0.0

    !$omp parallel reduction(+:total_integral)
    total_integral = integral(left_bound, right_bound, No_of_intervals)
    !$omp end parallel

    print *, total_integral

end program Trap_parallel

real function func(x) result(y)
    real, intent(in) :: x
    y = x**2    
end function func     

real function integral(a, b, n)
    use omp_lib
    implicit none
    
    ! Global variables
    real :: h, a, b
    real :: func
    integer :: n, i

    ! Local variables
    integer :: myrank 
    integer :: numthreads
    integer :: local_n
    real :: local_a, local_b
    real :: inte_local
      
    ! Initializing local variables
    myrank = omp_get_thread_num()
    numthreads = omp_get_num_threads()

    local_n = n / numthreads
    h = (b - a) / n
    local_a = a + myrank * local_n * h
    local_b = local_a + local_n * h

    inte_local = (func(local_a) + func(local_b)) / 2.0
        
    do i = 0, local_n - 2
        inte_local = inte_local + func(local_a + i * h)
    end do 

    integral = inte_local * h


end function integral
