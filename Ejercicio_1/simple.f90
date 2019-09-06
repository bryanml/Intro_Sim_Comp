program simple 
    use ziggurat
    implicit none
    logical :: es
    integer :: seed, i, j, k
    real, dimension(2) :: v
    integer :: N
![NO TOCAR] Inicializa generador de número random
    inquire(file='seed.dat',exist=es)
    if(es) then
        open(unit=10,file='seed.dat',status='old')
        read(10,*) seed
        close(10)
    else
        seed = 24583490
    end if
    call zigset(seed)
![FIN NO TOCAR]    

    open(unit=1,file='input.txt',status='old')
    open(unit=2,file='output.txt',status='replace')
    read(unit=1,fmt=*) N
    do i = 1, N
    v(1) = uni()
    v(2) = uni()
    if(v(2)>v(1)) then
            write(unit=2,fmt=*) v
    else
    end if
    end do
    close(unit=1)
    close(unit=2)

![No TOCAR]
! Escribir la última semilla para continuar con la cadena de numeros aleatorios 
    open(unit=10,file='seed.dat',status='unknown')
    seed = shr3() 
    write(10,*) seed
    close(10)
![FIN no Tocar]        
end program simple
